#!/usr/bin/env bash

read -p "Are you sure you want to import terraform state (y/n)? " verify

if [[ $verify == "y" ]]; then
  echo "Importing bootstrap state"
  ./run.sh init
  ./run.sh import module.s3.cloudfoundry_service_instance.bucket rtci
  ./run.sh import cloudfoundry_service_key.bucket_creds rtci
  ./run.sh plan
else
  echo "Not importing bootstrap state"
fi
