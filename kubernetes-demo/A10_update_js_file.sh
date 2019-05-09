#!/bin/bash
source setup.config
echo "Update hello-http.js file"
sed -i "s/Hello/Namaste/g" node-demo/hello-http.js
