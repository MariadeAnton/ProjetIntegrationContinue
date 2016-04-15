#!/bin/bash

cp -R html $HOME/html

#configuration
cd $HOME

git config --global user.email "saindy.nkadi@yahoo.fr"
git config --global user.name "Dorlige"

git clone --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git gh-pages > /dev/null

cd gh-pages
 git remote rm origin
 git remote add origin https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git
 
 cp $HOME/html/* ./
 
 #git checkout gh-pages

 
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages [ci skip]"
 
 git checkout gh-pages
 
  git push -fq origin gh-pages  
  #git push -fq https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git master > /dev/null
 echo -e "Deploy completed\n"
 #fi
