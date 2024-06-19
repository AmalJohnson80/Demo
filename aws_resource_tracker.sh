#!/bin/bash
#debug mode
set -x
# list s3 buckets
aws s3 ls
#list ec2 instances
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#list lambda functions
aws lambda list-functions
#list iam users
aws iam list-users | jq '.Users[].UserName'

