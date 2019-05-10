#!/bin/bash
command="oc create --namespace=${namespace_name} -f ./kubedemo-service.yaml" 
echo $command 
$command

