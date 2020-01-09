# This script runs the bash command to move the .docker file into goinfre

# This script must be run BEFORE you create your docker machine!

# You can cd to other places and perform actions, however,
# once those actions have been completed, the terminal instance
# is still inside the directory you ran the command from

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

cd ~/goinfre
# check if the .docker dir is in goinfre, if not, perform the command
if [ -d ".docker" ]; then
    printf "${blue}The .docker file is already inside goinfre\n"
else    
    cd
    if [ -d ".docker" ]; then
    printf "${green}Moving .dockerdir to goinfre\n\n"
    fi
    # move docker folder to goinfre
    mv .docker goinfre
    cd goinfre
    # create a symbolic link to goinfre/.docker called .docker
    ln -s goinfre/.docker ../.docker
    # # list out the inodes link
    printf "${green}Link created.\n"
    ls -ila .docker
fi