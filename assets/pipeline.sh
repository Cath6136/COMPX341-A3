#!/bin/bash
echo "(0) Install (installing the application)"
npm install
echo "(1) Build (compiling the application)"

if npm run build; then
   echo "Build succeeded"
else
   echo "Build failed"
   exit
fi

echo "(2) Release (committing to repo)"
git add .
git commit -m "$*"
git push

echo "(3) Deploy (deployed to production)"
npm run start
