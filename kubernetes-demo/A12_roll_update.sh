#!/bin/bash

command='kubectl --namespace=kubedemo set image deployment/kube-nodejs kube-nodejs=alkesh/kube-nodejs:v2'

echo $command
$command
