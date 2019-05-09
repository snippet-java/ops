#!/bin/bash

command='kubectl --namespace=kubedemo rollout history deployment kube-nodejs'
echo $command
$command
