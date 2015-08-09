#!/bin/bash

###########################################################################
#
# install.sh
# 
# subl install script
#
#
# @author Luavis
# @date 2015.08.09
# @license MIT LICENSE
#
###########################################################################

INSTALL_FILE=subl
BIN_PATH=/usr/bin
INSTALL_URL=https://raw.github.com/Luavis/subl/master/bin/subl
CURL_EXISTS="$(whereis curl)"

print_bold() {
  printf "\033[1m%s\033[0m " "$@"
}

echo_bold() {
  printf "\033[1m%s\033[0m " "$@"
  echo
}

echo_err() {
  printf "\033[0;31m%s\033[0m " "$@"
}

##########################
# check user permission
##########################
if [[ $EUID -ne 0 ]]; then
    echo_err "This script must be run as root :(" 
    echo_err "Please try running this command again as root user"
    exit 1
fi

##########################
# check dependency
##########################

# check curl exists

if [[ $CURL_EXISTS = "curl not found" ]]; then
  echo_err "Please install curl first"
  exit 1
fi

##########################
# Start install
##########################
echo "==================================="

echo "Start Installing..."
echo 
echo_bold "Installing git ignore binary"

if [[ -f $BIN_PATH/$INSTALL_FILE ]]; then # remove git ignore
  echo_bold "\t  Remove present subl"
  rm -f $BIN_PATH/$INSTALL_FILE
fi

# install in bin
curl -sL $INSTALL_URL > $BIN_PATH/$INSTALL_FILE

printf "\t  Change subl permission as excutable\n"

# change permission
chmod 755 $BIN_PATH/$INSTALL_FILE

echo

echo_bold "Install finished"

echo 
echo "==================================="
