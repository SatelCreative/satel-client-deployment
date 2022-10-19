#!/bin/bash
APP_NAME=$1
CLIENT=$2

# echo "APP_NAME=${APP_NAME}, CLIENT=${CLIENT}"

echo "Build client"
if [[ $CLIENT != None ]]
then
    cd $CLIENT
    yarn install
    yarn lint
    yarn build  
fi  
