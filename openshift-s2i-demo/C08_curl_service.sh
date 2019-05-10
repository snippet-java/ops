#!/bin/bash
source setup.config

ip_address=$(ifconfig eth1 | grep inet | awk '{print $2}' | cut -f2 -d:)
ipoct4=$(echo ${ip_address} | tr "." " " | awk '{ print $4 }')
domain_name="apps.openshift${ipoct4}.bluecloudcourse.com"
host_name=$application_name"-"$namespace_name"."$domain_name

curl --connect-timeout 1 -s $host_name
