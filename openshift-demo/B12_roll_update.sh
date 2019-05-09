#!/bin/bash

command='oc --namespace=osdemo set image deployment/os-nodejs os-nodejs=alkesh/os-nodejs:v2'

echo $command
$command
