#!/bin/bash

cp -R html $HOME/html

#configuration
cd $HOME

git config --global user.email "saindy.nkadi@yahoo.fr"
git config --global user.name "Dorlige"


#clone branch gh-pages
#git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/${GH_REF}  gh-pages > /dev/null
git clone --quiet https://${GH_TOKEN}@github.com/Dorlige/ProjetIntegrationContinue.git gh-page > /dev/null

cd gh-page
ls
#cd master
cp $HOME/html/faq.html ./index.html

ls -al index.html

 #add, commit and push files
 git add -f index.html
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-page "
# git push -f -q https://${GH_TOKEN}@github.com/${GH_REF} origin gh-pages > /dev/null
 #git push -fq origin master > /dev/null

 git push -f -q https://${GH_TOKEN}@github.com/${GH_REF}  origin master > /dev/null



 echo -e "Deploy completed\n"


 #fi
