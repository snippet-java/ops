#!/bin/bash
source setup.config
command="kubectl get pods --namespace=${namespace_name}"
echo $command
$command
