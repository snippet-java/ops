#!/bin/bash

command='oc --namespace=osdemo rollout undo deployment/os-nodejs'
 echo $command
$command
