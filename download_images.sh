#!/bin/sh
function Message(){
    printf "          .___             _____         ________    _________       "
    printf "          |   |  _____    /  |  |   ____ \_____  \  /   _____/       "
    printf "          |   | /     \  /   |  |_ / ___\  _(__  <  \_____  \        "
    printf "         |   ||  Y Y  \/    ^   // /_/  >/       \ /        \        "
    printf "          |___||__|_|  /\____   | \___  //______  //_______  /       "
    printf "                     \/      |__|/_____/        \/         \/        "
    printf "\n\n"

}
function Create_file(){
    emacs urls.txt    
}

function Download_images(){
    printf "%s" "Downloading images..."
    wget -i urls.txt
}

function Convert_to_jpg(){
    rename 's/$/.jpg/' *
}

function Delete_garbage(){
    rm -f urls.txt.jpg urls.txt~.jpg urls.txt
}

function Open_directory(){
    open $path/$name
}


clear 
Message
path="/Users/ricklicona/Downloads/images"
cd $path

printf "%s" "Name of the new Directory: "
read name
mkdir $name

cd $path/$name

Create_file
Download_images
Convert_to_jpg
Delete_garbage
printf "\n\n%s\n\n" "READY!!!"
say "Ready"
Open_directory



