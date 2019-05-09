#!/bin/bash

oc --namespace=osdemo rollout status deployment/os-nodejs

# kubectl --namespace=kubedemo rollout undo deployment/myvertx
# kubectl --namespace=kubedemo rollout undo deployment/myvertx --to-revision=2
