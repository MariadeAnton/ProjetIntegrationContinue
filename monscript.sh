#!/bin/bash

cp -R html $HOME/html

#configuration
cd $HOME

git config --global user.email "saindy.nkadi@yahoo.fr"
git config --global user.name "Dorlige"


#clone branch gh-pages
#git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/  gh-pages > /dev/null
git clone --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git gh-pages > /dev/null

cd gh-pages



#copie de la nouvelle version
cp  -Rf $HOME/html/faq.html ./index.html

 #add, commit and push files
 git add --all .
 echo -e "On fait un commit\n"
 
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages "
#git push -fq origin gh-pages > /dev/null
 #git push -fq origin master > /dev/null
 
 echo -e "On fait un push sur master\n"

 git push --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git  gh-pages> /dev/null



 echo -e "Deploy completed\n"


 #fi
