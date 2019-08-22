Serverless Node.js on AWS Lambda with Layers
================================================

## Summary

In this talk I'll demonstrate how to customize AWS Lambda to run Node.js 12 using AWS Lambda Layers.

#### Agenda

- What is serverless?
- Why do I care?
- AWS Lambda basics
- Demo

## Prerequisites

- Create an [AWS account](https://aws.amazon.com/).
- Install and configure the AWS [command line interface](https://aws.amazon.com/cli/).

## Clone this repository

```sh
$ git clone https://github.com/neilshannon/node12-lambda-layers.git
$ cd node12-lambda-layers
```

## Build your function

This script takes your code and creates a .zip file in `dist/lambda.zip`

```sh
$ cd bin
$ ./build.sh
```

## Deploy your function to AWS

This script creates an AWS IAM Role for your Lambda function, then creates your lambda function on AWS using the code contained in `dist/lambda.zip`.  The Lamnda function is built using a *custom runtime* provided in a [AWS Lambda Layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) by [LambCI](http://lambci.org/) [(source code)](https://github.com/lambci/node-custom-lambda).

```sh
$ ./deploy.sh
```

## Execute your function

This script executes your function on AWS Lambda and displays the response.

```sh
$ ./invoke.sh
```
