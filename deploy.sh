#! /bin/sh

cp -rf build/* deploy/
rm deploy/img deploy/vendor
cp -rf img/ vendor/ deploy/
cd deploy
git add -A && git commit -m "deploy"
git push heroku master
