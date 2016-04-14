#!/bin/bash

cp -R html $HOME/html

#configuration
cd $HOME

git config --global user.email "saindy.nkadi@yahoo.fr"
git config --global user.name "Dorlige"

#clone branch gh-pages
#git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/  gh-pages > /dev/null
 echo -e "On fait un clone\n"
#git clone --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git doc > /dev/null

git clone https://Dorlige:d06121adf16ebcf335f924a4ba1f4094bb84fc09@github.com/Dorlige/ProjetIntegrationContinue.git --branch=gh-pages gh-pages

# git clone --depth=50 --branch=master https://github.com/Dorlige/ProjetIntegrationContinue.git 

cd gh-pages
 git remote rm origin
  git remote add origin https://Dorlige:d06121adf16ebcf335f924a4ba1f4094bb84fc09@github.com/Dorlige/ProjetIntegrationContinue.git

#copie de la nouvelle version
cp  -Rf $HOME/html/faq.html ./index.html
 #add, commit and push files
 git add -f index.html
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages "
  echo -e "On fait un push sur master\n"
  git push -fq origin master  > /dev/null
 #git push -fq origin doc > /dev/null
 #git push --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git  master > /dev/null
 echo -e "Deploy completed\n"
 #fi
