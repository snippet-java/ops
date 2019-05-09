#!/bin/bash
source setup.config
command="kubectl --namespace=${namespace_name} scale deployment ${application_name} --replicas=3"
echo $command 
$command
