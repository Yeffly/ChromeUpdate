sudo apt-get -y install libxml2-utils
mkdir ./public/api -p
mkdir ./tmp/checker -p
mkdir ./tmp/parse -p
mkdir ./tmp/api/

chmod +x ./util/checker.sh
chmod +x ./util/xmlparser.sh
chmod +x ./util/parse.sh
chmod +x ./util/generator.sh
chmod +x ./util/deployer.sh
chmod +x ./util/parse-mac.sh
chmod +x ./util/generator-mac.sh

./util/checker.sh

./util/parse.sh stable-x86 stable-x64 beta-x86 beta-x64 dev-x86 dev-x64 canary-x86 canary-x64

./util/parse-mac.sh stable-intel stable-m1 beta-intel beta-m1 dev-intel dev-m1 canary-intel canary-m1

cp -rf src/index.html tmp/index.html
cp -rf src/chrome.xml tmp/chrome.xml

DATE="$(echo $(TZ=UTC-8 date '+%Y-%m-%d %H:%M:%S'))"
sed -i "s|{{CheckTime}}|$DATE|g" tmp/index.html
sed -i "s|{{CheckTime}}|$DATE|g" tmp/chrome.xml

./util/generator.sh stable-x86 stable-x64 beta-x86 beta-x64 dev-x86 dev-x64 canary-x86 canary-x64

./util/generator-mac.sh stable-intel stable-m1 beta-intel beta-m1 dev-intel dev-m1 canary-intel canary-m1

xmllint --format tmp/chrome.xml > tmp/api/chrome.xml
xmllint --noblanks tmp/chrome.xml > tmp/api/chrome.min.xml

cp -rf tmp/index.html public/index.html
cp -rf src/assets public
cp -rf src/semantic.min.css public/semantic.min.css
cp -rf tmp/api/chrome.xml public/api/chrome.xml
cp -rf tmp/api/chrome.min.xml public/api/chrome.min.xml
rm -rf tmp

#./util/deployer.sh
