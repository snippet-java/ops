#!/bin/bash
command='docker build -t alkesh/kube-nodejs:v2 .'
echo $command
cd node-demo
$command
cd ..
