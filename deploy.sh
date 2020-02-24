cp -r src /tmp/src
git fetch origin gh-pages
git checkout gh-pages
cp /tmp/src/* .
ls -l
echo "Done!"
