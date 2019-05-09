#!/bin/bash
source setup.config
command="docker build -t ${update_image_name} ."
echo $command
cd node-demo
$command
cd ..
