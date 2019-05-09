#!/bin/bash
source setup.config
command="oc --namespace=${namespace_name} scale deployment ${application_name} --replicas=3"
echo $command 
$command
