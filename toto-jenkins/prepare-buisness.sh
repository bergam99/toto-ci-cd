#!/bin/bash

set -ex # Failure et arreter à l'erreur

# $0 = script meme
# declarer constant
readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1

echo "> Execution ${SCRIPT}"

echo " > Preparing buisness artifacts with maven and java: "

mvn -v
mvn -Dmaven.test.skip=true -f ./toto-buisness/pom.xml package

echo " > Build completed succesfully"