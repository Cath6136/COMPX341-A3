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
echo "(2) Test (code testing, i.e. unit tests)"

echo "(3) Release (committing to repo)"
git add .
git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
git push origin master
git status

echo "(4) Deploy (deployed to production)"
npm run start
