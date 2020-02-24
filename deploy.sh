cp -r src /tmp/src
git fetch origin gh-pages
git checkout FETCH_HEAD
cp /tmp/src/* .
ls -l
echo "Done!"
