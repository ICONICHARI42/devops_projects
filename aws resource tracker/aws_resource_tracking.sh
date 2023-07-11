#!/bin/bash

###########
# AUTHOR: Hari Prasath

# DATE: 11th-July

# VERSION: v1

# This script will report usage of AWS in an organization
############

set -x

### RESOURCES TO BE TRACKED ###
#AWS S3

#AWS EC2

#AWS Lambda

#AWS IAM Users
############

#Listing S3 buckets
echo "LIST OF S3 BUCKETS: "
aws s3 ls

#Listing EC2 instances
echo "LIST OF EC2 INSTANCES: "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' 

#Listing Lamba functions
echo "LIST OF LAMBDA FUNCTIONS: "
aws lambda list-functions

#Listing IAM users
echo "LIST OF IAM USERS"
aws iam list-users

