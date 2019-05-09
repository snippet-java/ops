#!/bin/bash
source setup.config
cd node-demo
docker build . -t $image_name
