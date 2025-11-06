#!/bin/bash

set -e # Failure et arreter à l'erreur

readonly SCRIPT=$0
readonly TOTO_BUISNESS_DEPLOY_DIR=$1 # deposer .jar
readonly TOTO_BUISNESS_URL=$2

echo "> Execution ${SCRIPT}"

echo " > Deploy target/*.jar to ${TOTO_BUISNESS_DEPLOY_DIR}"
rm -rf $TOTO_BUISNESS_DEPLOY_DIR/* # supprimer dans le folder l'ancien build
cp ./toto-buisness/target/*.jar $TOTO_BUISNESS_DEPLOY_DIR/toto-buisness.jar # sur ecrire (les artifacts de build dans dist -> copy deploy directory)

echo " > Deployed !!"
echo $TOTO_BUISNESS_URL

