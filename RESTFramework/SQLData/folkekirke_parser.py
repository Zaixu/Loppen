# -*- coding: utf-8 -*-
'''
    Description: For parsing Folkekirkens Nødhjælp map data.
    Author: Crynac
'''
# Import
from html.parser import HTMLParser
import re
import json

# Classes
class MyHTMLParser(HTMLParser):
    ''' For parsing the "Folkekirkens Nødhjælp"´s map HTML page.
    
        Read and understand the code with risk of confusion and madness.
    '''
    fleamarkets = []
    current_market = {"name": "", "city": "", "postcode": "", "address": "", "openings": [], "category": "$category_charity",
                        "logo": "$logo_folkekirken", "description": "Folkekirkens Nødhjælp´s genbrugsbutik.", "items": ["other"]}
    flag = ""
    opening_postfix = ""
    def __init__(self, strict):
        super().__init__(strict)
    def handle_starttag(self, tag, attrs):
        for attr in attrs:
            if attr[0] == "class" and attr[1] == "overskrift":
                self.flag = "name"
                break
    def handle_endtag(self, tag):
        pass
    def handle_data(self, data):
        if self.flag == "name":
            self.current_market["name"] = "Folkekirkens Nødhjælp: " + parse_string(data)
            self.flag = ""
        elif data == "Adresse":
            self.flag = "next_is_address"
        elif self.flag == "next_is_address":
            self.current_market["address"] = parse_string(data)
            self.flag = "next_is_city"
        elif self.flag == "next_is_city":
            city_parts = parse_string(data).partition(" ")
            city_name = city_parts[2]
            city_postcode = city_parts[0]
            self.current_market["city"] = city_name
            self.current_market["postcode"] = city_postcode
            self.flag = ""
        elif "bningstider" in data: # Note: Had problem with 'Å'
            self.flag = "openings"
        elif self.flag == "openings":
            # Special case
            if parse_string(data) == "Vinter:" or parse_string(data) == "Sommer:":
                self.opening_postfix = parse_string(data) + " "
        
            # Check data
            elif data.strip() == "":
                return
            elif data == "\n":
                self.flag = ""
            elif "mere..." in data:
                self.fleamarkets.append(self.current_market.copy())
                self.current_market["openings"] = []
                self.flag = ""
                self.opening_postfix = ""
            else:
                if re.search("^[0-9]+?.[0-9][0-9] -", data.strip()) or re.search("Afhentning af varer", data.strip()):
                    self.current_market["openings"][len(self.current_market["openings"]) - 1] += " " + parse_string(data)
                else:
                    self.current_market["openings"].append(self.opening_postfix + parse_string(data))

# Functions
def make_pfp(fleamarkets):
    ''' To convert the list into .pfp format.'''
    return json.dumps(fleamarkets, indent=4)

def parse_string(data):
    ''' To refine the string. 
    
        Currently only strips but at some point it did things like convert "æøå", so still in use if need to refine the string further at some point.
    '''
    string_refined = data.strip()
    return string_refined
    
# Main
if __name__ == "__main__":
    # Get data
    file = open("folkekirke_rip.htm", "r", encoding="utf8")
    file_data = file.read()
    
    # Parse
    parser = MyHTMLParser(strict=False)
    parser.feed(file_data)
    file = open("folkekirken_genbrugsbutikker.txt", "w")
    file.write(make_pfp(parser.fleamarkets))