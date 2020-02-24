cp -r src /tmp/src
git fetch origin gh-pages
git checkout FETCH_HEAD
cp /tmp/src/* .
echo $KKK_SECRET | base64 --decode >/tmp/flower.pri.gz
gunzip /tmp/flower.pri.gz
ls -l /tmp
ls -l
echo "Done!"
