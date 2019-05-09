#!/bin/bash
source setup.config
# Get the IP address of the VM
IP=$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -f2 -d:)

echo $IP

# Get the NodePort of the service
NODEPORT=$(kubectl --namespace=${namespace_name} get services ${application_name} -o yaml | grep nodePort | cut -f2 -d:)

echo $NODEPORT

# Combine the two, trimming off whitespace
THEURL=$IP:$(echo $NODEPORT | awk '{print $1}')/

echo $THEURL

# curl it
while true
do 
  curl --connect-timeout 1 -s $THEURL;
  echo
  sleep 1;
done
