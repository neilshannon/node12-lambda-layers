#! /bin/bash
mkdir -p ../dist
pushd ../src
zip -yru ../dist/lambda.zip index.js
popd