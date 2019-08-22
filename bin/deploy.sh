#! /bin/bash


#
# nodejs layer 12.9.0 provided by https://github.com/lambci/node-custom-lambda
#

#create lambda role
echo 'creating lambda iam role [lambda-cli-role]'
aws iam create-role --role-name lambda-cli-role --assume-role-policy-document file://lambda-role.json

echo 'creating lambda function [node-12-lambda]'
ACCOUNT_ID=$(aws sts get-caller-identity --output text --query 'Account')

pushd ../dist

aws lambda create-function --function-name node-12-lambda \
--zip-file fileb://lambda.zip \
--handler index.handler \
--runtime provided \
--role arn:aws:iam::$ACCOUNT_ID:role/lambda-cli-role \
--layers arn:aws:lambda:us-east-1:553035198032:layer:nodejs12:13

popd