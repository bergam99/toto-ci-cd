#!/bin/bash


# $0 = script meme
# declarer constant
readonly SCRIPT=$0
readonly ENV_FILE_PATH=$1

echo "> Execution ${SCRIPT}"

echo " > Preparing presentation artifacts with node and npm: "

node -v
npm -v

echo " > Generate artifacts with npm: "

# => toto-presentation/ 

npm --prefix ./toto-presentation/ install # faire npm install dans le dossier toto-presentation mais pas dnas le workspace racine.

# .env.production 
cp $ENV_FILE_PATH ./toto-presentation/.env.production # copie source -> destination

npm --prefix ./toto-presentation/ run build
