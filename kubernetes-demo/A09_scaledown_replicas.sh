#!/bin/bash
source setup.config
command="kubectl --namespace=${namespace_name} scale deployment ${application_name} --replicas=2"
echo $command 
$command
