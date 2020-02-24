cp -r src /tmp/src
git fetch origin gh-pages
git checkout --track origin/gh-pages
cp /tmp/src/* .
ls -l
echo "Done!"
