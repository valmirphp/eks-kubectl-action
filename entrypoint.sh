#!/bin/sh

set -e

export AWS_ACCESS_KEY_ID="$INPUT_AWS_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="$INPUT_AWS_SECRET_ACCESS_KEY"

if [ ! -z "$INPUT_K8S_FILE_CONFIG" ]; then
  echo "Print >> $INPUT_K8S_FILE_CONFIG"
  echo "FILE: /k8s-config.yaml"
  echo $INPUT_K8S_FILE_CONFIG > /k8s-config.yaml
fi

echo "aws version"

aws --version

echo "Attempting to update kubeconfig for aws"

#aws eks --region "$INPUT_AWS_REGION" update-kubeconfig --name "$INPUT_CLUSTER_NAME"
#kubectl "$@"
