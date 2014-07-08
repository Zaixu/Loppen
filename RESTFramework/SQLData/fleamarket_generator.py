'''
    Description: Used for generation list of fleamarkets from an intermediate file.
    
        Parses .pfp files and generates SQL statements.
    Author: Crynac
'''
# Import
import json
import urllib.request
import urllib.parse
import urllib.error
import time
from socket import timeout

# Functions
# :Get coordinates
def get_coordinates(unit):
    ''' For getting coordinates from a fleamarket(dictionary).
    
        Appends the coordinates with the keys: "latitude" and "longitude".
    '''
    print("Getting coordinates")
    url = "http://maps.googleapis.com/maps/api/geocode/json?" + urllib.parse.urlencode({'address': unit["city"] + " " + unit["postcode"]}) + "&sensor=false"
    url_read = False
    while(not url_read):
        try:
            response = urllib.request.urlopen(url)
        except (urllib.error.HTTPError, urllib.error.URLError) as error:
            print("LOG: Timout error. Trying again.")
        except timeout:
            print("LOG: Timout error. Trying again.")
        else:
            url_read = True
            
    data = response.read()
    text = data.decode('utf-8')
    json_data = json.loads(text)
    unit["latitude"] = json_data["results"][0]["geometry"]["location"]["lat"]
    unit["longitude"] = json_data["results"][0]["geometry"]["location"]["lng"]

# :Load data
def load_pfp(file):
    ''' Loads pfp file and returns the content as Python object. '''
    print("Loading fleamarket file")
    fleamarket_chunk = json.load(file)
    print("Loaded {count} fleamarkets".format(count=len(fleamarket_chunk["fleamarkets"])))
    return fleamarket_chunk

# :Unit SQL
# ::Parse opening
def parse_opening(opening_str):
    # Filter
    # :Regex filters
    #
    #   Pseudo
    #       1. Check for match
    #       2. Decode into 'opening' format for server
    #       3. Add any external info like "1. lærdag i måneden" or "Vinter"
    #
    
    # :Items passes through
    # ::Warning to a logfile with the string
    pass

# ::Generate SQL
def make_fleamarket_sql(unit):
    ''' Converts fleamarket(dictionary) into SQL insert form. '''
    print("Making SQL for fleamarket: " + unit["address"] + ", " + unit["city"])
    get_coordinates(unit)

    # Address
    address_sql = "INSERT INTO `fleamarket_addresses`\n\
SET city = '{city}', street = '{street}', postcode = '{postcode}', latitude = {latitude}, longitude = {longitude};\n";
    address_sql = address_sql.format(city=unit["city"], street=unit["address"], postcode=unit["postcode"], 
                                        latitude=unit["latitude"], longitude=unit["longitude"]);
    # Fleamarket
    fleamarket_sql = "INSERT INTO `fleamarkets`\n\
SET name = '{name}', description = '{description}', logo = '{logo}', created_on = CURRENT_TIMESTAMP(),\
modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),\
fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '{street}' AND city = '{city}'), category = '{category}';\n";
    descr = unit["description"]
    
    fleamarket_sql = fleamarket_sql.format(name=unit["name"], description=descr, logo=unit["logo"], street=unit["address"], city=unit["city"], category=unit["category"])
    # Openings
    opening_sql = ""
    for opening in unit["openings"]:
        opening_sql += "INSERT INTO `fleamarket_openings`\n\
SET description = '{description}', fleamarkets_id = (SELECT id FROM fleamarkets WHERE \
fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE \
street = '{street}' AND city = '{city}')), \
fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; \n".format(description=opening, street=unit["address"], city=unit["city"])
    
    # Items
    item_sql = ""
    for item in unit["items"]:
        item_sql += "INSERT INTO fleamarkets_has_fleamarket_items\n\
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE \
fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '{street}' AND city = '{city}')), \
fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = '{item_name}'); \n".format(street=unit["address"], city=unit["city"], item_name=item);
    
    combined_sql = "-- Fleamarket --\n"
    combined_sql += "-- Address --\n"
    combined_sql += address_sql
    combined_sql += "-- Fleamarket_Info --\n"
    combined_sql += fleamarket_sql
    combined_sql += "-- Fleamarket_Openings --\n"
    combined_sql += opening_sql
    combined_sql += "-- Fleamarket_Items --\n"
    combined_sql += item_sql
    
    return combined_sql
    
# :Parse chunk
def parse_chunk(chunk):
    ''' Parses the object returned from "load_pfp". '''
    print("Parsing chunk")
    sql_full = ""
    for fleamarket in chunk["fleamarkets"]:
        fleamarket["category"] = chunk["variables"][fleamarket["category"]]
        fleamarket["logo"] = chunk["variables"][fleamarket["logo"]]
        sql_part = make_fleamarket_sql(fleamarket)
        sql_full += sql_part + "\n"
        time.sleep(0.5)
        
    return sql_full

# Main
if __name__ == "__main__":
    file = open("fleamarketChunk.pfp", "r")
    fleamarket_chunk = load_pfp(file)
    sql = parse_chunk(fleamarket_chunk)
    file = open("GeneratedSQL.sql", "w")
    file.write(sql)