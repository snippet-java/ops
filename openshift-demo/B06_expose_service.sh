#!/bin/bash

command='oc --namespace=osdemo expose deployment --port=8082 os-nodejs --type=LoadBalancer'
echo $command
$command
