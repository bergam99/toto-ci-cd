#!/bin/bash

# set -e # Failure et arreter à l'erreur

readonly SCRIPT=$0
readonly TOTO_BUISNESS_DEPLOY_DIR=$1 # deposer .jar
readonly TOTO_BUISNESS_URL=$2
readonly TOTO_BUISNESS_PORT=$3

echo "> Execution ${SCRIPT}"

echo "> Stopping toto-buisness (optional operation)"
readonly PID=$(lsof -ti tcp:$TOTO_BUISNESS_PORT) # recuperer le port en variable au niveau propriete folder
readonly PID_EXIT_CODE=$?

set -e # pas tout en haut si pid exists pas

if [$PID_EXIT_CODE -eq 0]; then
    # Stop app
    echo "killing gracefully the process with PID=${PID}..."
    kill -15 $PID
    echo "Process killed"

elif
    echo "process isn't running"
fi


echo " > Deploy target/*.jar to ${TOTO_BUISNESS_DEPLOY_DIR}"
rm -rf $TOTO_BUISNESS_DEPLOY_DIR/* # supprimer dans le folder l'ancien build
cp ./toto-buisness/target/*.jar $TOTO_BUISNESS_DEPLOY_DIR/toto-buisness.jar # sur ecrire (les artifacts de build dans dist -> copy deploy directory)

echo " > Deployed !!"
echo $TOTO_BUISNESS_URL

