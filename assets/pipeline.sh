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
git add -u

read -r -p 'Commit desciption: ' desc
if [ -z "$desc" ]
then
     printf "\nExit: commit description is empty!"
     exit
fi

git commit -m "$desc"
git push

echo "(3) Deploy (deployed to production)"
npm run start
