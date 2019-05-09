#!/bin/bash
echo "Update hello-http.js with Namaste instead of Hello"
sed -i "s/Hello/Namaste/g" node-demo/hello-http.js
