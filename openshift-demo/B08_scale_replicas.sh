#!/bin/bash

command='oc --namespace=osdemo scale deployment os-nodejs --replicas=3'
echo $command 
$command
