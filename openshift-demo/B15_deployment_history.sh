#!/bin/bash

command='os --namespace=osdemo rollout history deployment os-nodejs'
echo $command
$command
