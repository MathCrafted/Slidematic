#! /bin/bash

# Author: Joshua Rivers Haley & Lucas Starkey
# Date: 4 March 2025
# Purpose: To pull slides from the API endpoint

urlImageUrlList="https://eo8j6l90n78ukst.m.pipedream.net/"

jsonListImageUrls=`curl ${urlImageUrlList}`
# Debug
# echo ${jsonListImageUrls}

intLength=`echo ${jsonListImageUrls} | jq -r 'length'`

intIndex=0
while [ ${intIndex} -le ${intLength} ]; do
    curl --output ${intIndex} `echo ${jsonListImageUrls} | jq -r '.[${intIndex}]'`
    ((intCurrent++))
done
