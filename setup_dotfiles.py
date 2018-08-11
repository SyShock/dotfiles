'''
Author: SyShock
Description: this script installs the dotfiles on your system, it has two options: install or recover
Additional: this script does not install the missing dependencies that the dotfiles' programs will use, yet...
'''
# CONFIG STRINGS
logfile = "setup.log"
dotfile = "dotfiles.json"
backup_suffix = "__backup"
preset="default"
#------------------------------------------

import json
import os
import time
import datetime

def print_notifier():
    print("----------------------------------------------------------------")
    print("Script output will be logged in "+logfile+" for future reference")
    print("----------------------------------------------------------------")

def replace_text_in_file(filename, text_to_search, replacement_text): 
    with open(filename, 'r') as file:
        filedata = file.read()
    filedata = filedata.replace(text_to_search, replacement_text)
    with open(filename, 'w') as file:
        file.write(filedata)

def create_logger(file):
    def log(string):
        ts = time.time()
        st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
        print(string)
        string = "["+st+"] "+string+"\n"
        file.write(string)
    return log

def parse_json(func):
        with open(dotfile) as json_data:
            data = json.load(json_data)
            link = data[preset]
            for d in link:
                path = d.replace("~", home)
                source = os.getcwd()+"/"+link[d]
                func(path,source)

def install(path, source):
    if os.path.exists(path+backup_suffix):
        log(path+backup_suffix+" exists, script will skip it to prevent file mangling")
        #input("[s]kip, [o]verwrite, [a]bort")
        return

    if os.path.exists(path) and not os.path.islink(path):
        log(path+" - "+"Path exists!")
        log("Renaming: "+path+" to "+path+backup_suffix)
        os.rename(path, path+backup_suffix)
    try:
        log("Linking: " +source+" to " +path)
        os.symlink(source, path)
    except FileExistsError:
        log("Link already exists!")

def recover(path, source):
    if os.path.exists(path+backup_suffix):
        if os.path.islink(path):
            log("Removing: "+path)
            os.remove(path)
            log("Renaming: "+path+backup_suffix+" to " +path)
            os.rename(path, path+backup_suffix)
        else:
            log("Not a link or missing, skipping!")
    else: 
        log("Removing: "+path)
        os.remove(path)

def main():
    print("WARNING: I've yet to test this script thoroughly. USE AT OWN RISK!")
    print("Dotfiles script:")
    option = input("[i]nstall or [r]ecover or [e]xit:\n")
    if option == "i":
        log("# INSTALLING")
        print_notifier()
        parse_json(install)
        log("----------------------------------------------------------------")  
        log("Installation complete!\n")
    if option == "r":
        log("# REMOVING")
        print_notifier()
        parse_json(recover)
        log("----------------------------------------------------------------")  
        log("Removal complete!\n")
    if option == "e":
        return

home = os.path.expanduser("~")
file = open(logfile, 'a')
log = create_logger(file)
main()
file.close()