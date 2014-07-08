#!/usr/bin/python3
'''
    Description: For updating files from git and building the Phonegap platform specific folders(www).
        Platforms:
            Android
            Windows Phone 8
            
        Prerequisites:
            * Should be run from Phonegap application root folder.
            * The "www" subfolder should be submodules.
            * SSH auto login with Github.
    Author: Salizer
'''
# Modules
from os import path
from os import chdir
from os import getcwd
from os import environ
import json
import subprocess
import sys

# Module constants
CONFIG_FILENAME = "phonegapbuild.conf"
MAX_SCREEN_TEXT_LENGTH = 60

# Helper functions
# :Decorative
def print_header(string):
    ''' Print a header line.
    '''
    fill_char = ':'
    desired_size = MAX_SCREEN_TEXT_LENGTH
    fill_size = desired_size - len(string)
    fill_left = round(fill_size/2)
    fill_right = round(fill_size/2)
    if (fill_size % 2) != 0:
        fill_right += 1
    print("")
    print(fill_left * fill_char + string + fill_right * fill_char)
    
def print_info(string):
    ''' To emphasize text.
    '''
    fill_char = '*'
    print(fill_char + string + fill_char)
    
def print_separator():
    ''' To seperate separat output.
    '''
    fill_char = '-'
    desired_size = MAX_SCREEN_TEXT_LENGTH
    print(fill_char * desired_size)

# :Build for platform
def build_platform(platform_name, www_relative, git_file_data):
    ''' Issue general phonegap build command from arguments provided.
        
    '''
    command_args = ["phonegap", "local", "build", platform_name]
    root_folder = "platforms/" + platform_name
    www_folder = root_folder + "/" + www_relative
        
    print_separator()
    
    # :: Building
    print_info("Building for " + platform_name)
    returned = subprocess.call(command_args, shell=True)
    
    # :: Git repairing
    print_info("Repairing submodule '.git' file")
    with open(www_folder + "/.git", "w") as git_file:
        git_file.write(git_file_data)
    print_info("Repaired")
    
    print_separator()
    
# Git
# :Checkout
def git_checkout(branch_name, relative_dir, relative_back):
    ''' Checks out a branch in a folder.
    '''
    # Go to root folder
    chdir(relative_dir)
    
    command_args = ["git", "checkout", branch_name]
    subprocess.call(command_args, shell=True)
    
    # Go back
    chdir(relative_back)
    
# ::Root
def git_checkout_root(branch_name):
    ''' Helper functions for checkin out root directory.
    '''
    print_header("Checking Out Branch In Root")
    git_checkout(branch_name, "..", "LoppenApp")
    print_info("Checked out " + branch_name)

# ::Submodules
def git_checkout_submodules(branch_name):
    ''' Helper functions for checkin all submodules.
    '''
    # Main
    print_header("Checking Out Branch In www")
    git_checkout(branch_name, "www", "..")
    print_info("Checked out " + branch_name)
    
    # Android
    print_header("Checking Out Branch In platforms/android/assets/www")
    git_checkout(branch_name, "platforms/android/assets/www", "../../../..")
    print_info("Checked out " + branch_name)
    
    # iOS
    print_header("Checking Out Branch In platforms/ios/www")
    git_checkout(branch_name, "platforms/ios/www", "../../..")
    print_info("Checked out " + branch_name)
    
    # WP8
    print_header("Checking Out Branch In platforms/wp8/www")
    git_checkout(branch_name, "platforms/wp8/www", "../../..")
    print_info("Checked out " + branch_name)

# :Update git
def update_git(branch_name):
    ''' Makes a standard pull request.
    '''
    # Go to root folder
    chdir("..")
    
    # Update git
    environ["HOME"] = environ["USERPROFILE"] # Notice: Only tested for Windows
    command_args = ["git", "pull", "origin", branch_name]
    ret = subprocess.call(command_args, shell=True)
    
    # Recover directory
    chdir("LoppenApp")

# :Update submodules
def update_submodules(branch_name):
    ''' Updates root "www" and platform "www" submodule folders.
    '''
    # Go to root folder
    chdir("..")
    
    # Update recursive modules
    environ["HOME"] = environ["USERPROFILE"] # Notice: Only tested for Windows
    command_args = ["git", "submodule", "foreach", "git pull origin " + branch_name]
    subprocess.call(command_args, shell=True)
    
    # Recover directory
    chdir("LoppenApp")
    
# Config
def write_config():
    ''' For writing standard config file.
    '''
    with open(CONFIG_FILENAME, 'w') as config_file:
        print_info("Writing New Config")
        config_file.write(json.dumps(
            {
                "builds" : 
                    [
                        {"platform" : "wp8", "www_relative" : "www", "git_file_data" : "gitdir: ../../../../.git/modules/LoppenApp/platforms/wp8/www"}, 
                        {"platform" : "android", "www_relative" : "assets/www", "git_file_data" : "gitdir: ../../../../../.git/modules/LoppenApp/platforms/android/assets/www"}
                    ],
                "os" : "Windows",
                "complete_command" : "None",
                "working_branch" : "development"
            }, indent=4)
            )

def load_config():
    ''' For loading config file variables.
    '''
    with open("phonegapbuild.conf", 'r') as config_file:
        file_data = config_file.read()
        json_data = json.loads(file_data)
        #print("JSON: " + json_data["builds"][0])
        return json_data

# Main run
if __name__ == "__main__":
    ''' Main method for running operations written in file description.
    
        Can supply -r to make a fresh config file.
    '''
    # Check for config exists
    try:
        with open(CONFIG_FILENAME):
            pass
    except IOError:
        print_header("Config Not Found")
        write_config()
    
    # Clear config
    if len(sys.argv) > 1:
        if sys.argv[1] == "-c":
            write_config()
    else:       
        # Main operations
        # :Settings
        print_header("Python Used")
        print_info(str(sys.version_info))
        
        # :Load config
        print_header("Loading Config")
        config_data = load_config()
        print_info("Config loaded")
        
        # :Git root
        # ::Checkout root
        git_checkout_root(config_data["working_branch"])
        
        # ::Git
        print_header("Updating Git")
        update_git(config_data["working_branch"])
          
        # :Submodules
        # ::Checkout submodules
        git_checkout_submodules(config_data["working_branch"])
        
        # ::Update
        print_header("Updating Git Modules")
        update_submodules(config_data["working_branch"])
        
        # :Building
        print_header("Building")
        for build in config_data["builds"]:
            build_platform(build["platform"], build["www_relative"], build["git_file_data"])
            
        # :Misc
        if config_data["complete_command"] != "None":
            print_header("Running completion command")
            subprocess.call(config_data["complete_command"], shell=True)
            print_info("Completion command run")
            
        # :Let terminal stay open to see status
        input("Press any key to continue")
