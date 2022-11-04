#!/bin/bash
CLIENT=$1
GEN_TYPE=$2

# echo "GEN_TYPE=${GEN_TYPE}, CLIENT=${CLIENT}"

echo "Build client"
cd $CLIENT
yarn install
yarn lint
if [[ $GEN_TYPE != None ]] 
then
    yarn gen 
fi   
yarn build  
