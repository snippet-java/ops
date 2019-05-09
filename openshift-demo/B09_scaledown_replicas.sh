#!/bin/bash

command='oc --namespace=osdemo scale deployment os-nodejs --replicas=2'
echo $command 
$command
