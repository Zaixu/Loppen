'''
    Description: Goes through a pfp file and outputs a file with how many different openings there exists.
        Used as a way to get overview of much openings differ. Not only those who are the same but to get overview of syntax.
    Author: Crynac.
'''

import json

# Load data
def load_pfp(file):
    ''' Loads pfp file and returns the content as Python object. '''
    print("Loading fleamarket file")
    fleamarket_chunk = json.load(file)
    print("Loaded {count} fleamarkets".format(count=len(fleamarket_chunk["fleamarkets"])))
    return fleamarket_chunk
    
# Check for how many different scenarios
def check_scenarios(chunk):
    scenarios = set()
    for fleamarket in chunk["fleamarkets"]:
        for opening in fleamarket["openings"]:
            scenarios.add(opening)
    
    str_output = ""
    for scen in scenarios:
        str_output += scen + "\n"
        
    return str_output
    
# Main
if __name__ == "__main__":
    file = open("fleamarketChunk.pfp", "r")
    fleamarket_chunk = load_pfp(file)
    scenarios = check_scenarios(fleamarket_chunk)
    file = open("Scenarios.sce", "w")
    file.write(scenarios)