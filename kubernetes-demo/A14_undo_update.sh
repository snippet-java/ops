#!/bin/bash

command='kubectl --namespace=kubedemo rollout undo deployment/kube-nodejs'
 echo $command
$command
