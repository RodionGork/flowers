cp -r src /tmp/src
git fetch origin gh-pages
git checkout FETCH_HEAD
git checkout -b gh-pages
cp /tmp/src/* .
git add -A
git commit -m "Auto update $(date +%s)"
echo $KKK_SECRET | base64 --decode >/tmp/flower.pri.gz
gunzip /tmp/flower.pri.gz
chmod 600 /tmp/flower.pri
git remote set-url origin git@github.com:RodionGork/flowers.git
GIT_SSH_COMMAND="ssh -i /tmp/flower.pri" git push --set-upstream origin gh-pages
echo "Done!"
