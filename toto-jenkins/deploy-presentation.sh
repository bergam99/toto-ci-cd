#!/bin/bash

set -e # Failure et arreter à l'erreur

readonly SCRIPT=$0
readonly TOTO_PRESENTATION_DEPLOY_DIR=$1
readonly TOTO_PRESENTATION_URL=$2

echo "> Execution ${SCRIPT}"

echo " > Deploy dist/* to ${TOTO_PRESENTATION_DEPLOY_DIR}"
rm -r $TOTO_PRESENTATION_DEPLOY_DIR/* # supprimer dans le folder l'ancien build
cp -r ./toto-presentation/dist/* $TOTO_PRESENTATION_DEPLOY_DIR # sur ecrire (les artifacts de build dans dist -> copy deploy directory)

echo " > Deployed !!"
echo $TOTO_PRESENTATION_URL