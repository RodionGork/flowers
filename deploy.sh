cp -r src /tmp/src
git fetch origin gh-pages
git checkout FETCH_HEAD
cp /tmp/src/* .
git add -A
t=(date +%s)
git commit -m "Auto update $t"
echo $KKK_SECRET | base64 --decode >/tmp/flower.pri.gz
gunzip /tmp/flower.pri.gz
chmod 600 /tmp/flower.pri
GIT_SSH_COMMAND="ssh -i /tmp/flower.pri" git push
echo "Done!"
