echo ''
echo '-------------------------------------'
echo 'Start Deploying ......'
echo '-------------------------------------'

mkdir ./_deploy
cd ./_deploy

git init
git config --global push.default matching
git config --global user.email admin@nange.cn
git config --global user.name 佩佩
#git remote add origin https://github.com/XOS/CheckChrome.git
git remote add origin https://${{ secrets.USERNAME }}:${{ secrets.PASSWORD }} @github.com/XOS/CheckChrome.git
git pull origin gh-pages
rm -rf ./*
cp -rf ../public/* ../_deploy/

touch CNAME
echo 'chr.nan.ge' > ./CNAME

git add --all .
git commit -m "Daily check of Chrome offline packages by Travis CI"
git push --quiet --force origin HEAD:gh-pages
