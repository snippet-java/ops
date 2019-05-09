#!/bin/bash
source setup.config
command="oc --namespace=${namespace_name} create -f kubedemo-deployment.yaml --record --validate=false"
echo $command
$command
