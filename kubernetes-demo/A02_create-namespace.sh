#!/bin/bash
command="kubectl create -f ./kubedemo-namespace.yaml" 
echo $command 
$command
