#!/bin/bash
command='docker build -t alkesh/os-nodejs:v2 .'
echo $command
cd node-demo
$command
cd ..
