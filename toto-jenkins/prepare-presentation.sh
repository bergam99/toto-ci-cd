#!/bin/bash

echo " > Preparing presentation artifacts with node and npm: "
node -v
npm -v

echo " > Generate artifacts with npm: "

# => toto-presentation/ 

npm --prefix ./toto-presentation/ install # faire npm install dans le dossier toto-presentation mais pas dnas le workspace racine.

# .env.production

npm --prefix ./toto-presentation/ run build
