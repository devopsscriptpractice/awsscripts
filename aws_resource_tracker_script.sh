#!/bin/bash



#######################
#authour : swamy
#date : 14 10 2026
#version : v1

set -x

#list s3 bucket
echo "s3 bucket list "
aws s3 ls > ResourceTracer

# list ec2 instance 
echo "list ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda 
echo "list of lambda"
aws lambda list-functions >> ResourceTracer:q!

#list iam user
echo "list of ec2 user"
aws iam list-users
