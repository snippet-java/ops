#!/bin/bash
command="oc --namespace=osdemo create -f kubedemo-deployment.yaml --record --validate=false"
echo $command
$command
