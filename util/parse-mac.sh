echo ''
echo '-------------------------------------'
echo 'Parsing mac data ......'
echo '-------------------------------------'

for i in $@; do
    echo 'Parsing mac '${i}' data ......'
    
    sed -n '14p' ./tmp/parse/stable-x64.info > ./tmp/parse/stable-intel-result.info
    sed -n '21p' ./tmp/parse/stable-x64.info >> ./tmp/parse/stable-intel-result.info
    sed -n '23p' ./tmp/parse/stable-x64.info >> ./tmp/parse/stable-intel-result.info
    echo 'dl.google.com/chrome/mac/stable/GGRO/' >> ./tmp/parse/stable-intel-result.info
    echo 'googlechrome.dmg' >> ./tmp/parse/stable-intel-result.info
    
    sed -n '14p' ./tmp/parse/stable-x86.info > ./tmp/parse/stable-apple-result.info
    sed -n '21p' ./tmp/parse/stable-x86.info >> ./tmp/parse/stable-apple-result.info
    sed -n '23p' ./tmp/parse/stable-x86.info >> ./tmp/parse/stable-apple-result.info
    echo 'dl.google.com/chrome/mac/universal/stable/GGRO/' >> ./tmp/parse/stable-apple-result.info
    echo 'googlechrome.dmg' >> ./tmp/parse/stable-apple-result.info
    
    sed -n '14p' ./tmp/parse/beta-x64.info > ./tmp/parse/beta-intel-result.info
    sed -n '21p' ./tmp/parse/beta-x64.info >> ./tmp/parse/beta-intel-result.info
    sed -n '23p' ./tmp/parse/beta-x64.info >> ./tmp/parse/beta-intel-result.info
    echo 'dl.google.com/chrome/mac/beta/' >> ./tmp/parse/beta-intel-result.info
    echo 'googlechromebeta.dmg' >> ./tmp/parse/beta-intel-result.info
    
    sed -n '14p' ./tmp/parse/beta-x86.info > ./tmp/parse/beta-apple-result.info
    sed -n '21p' ./tmp/parse/beta-x86.info >> ./tmp/parse/beta-apple-result.info
    sed -n '23p' ./tmp/parse/beta-x86.info >> ./tmp/parse/beta-apple-result.info
    echo 'dl.google.com/chrome/mac/universal/beta/' >> ./tmp/parse/beta-apple-result.info
    echo 'googlechromebeta.dmg' >> ./tmp/parse/beta-apple-result.info
    
    sed -n '14p' ./tmp/parse/dev-x64.info > ./tmp/parse/dev-intel-result.info
    sed -n '21p' ./tmp/parse/dev-x64.info >> ./tmp/parse/dev-intel-result.info
    sed -n '23p' ./tmp/parse/dev-x64.info >> ./tmp/parse/dev-intel-result.info
    echo 'dl.google.com/chrome/mac/dev/' >> ./tmp/parse/dev-intel-result.info
    echo 'googlechromedev.dmg' >> ./tmp/parse/dev-intel-result.info
    
    sed -n '14p' ./tmp/parse/dev-x86.info > ./tmp/parse/dev-apple-result.info
    sed -n '21p' ./tmp/parse/dev-x86.info >> ./tmp/parse/dev-apple-result.info
    sed -n '23p' ./tmp/parse/dev-x86.info >> ./tmp/parse/dev-apple-result.info
    echo 'dl.google.com/chrome/mac/universal/dev/' >> ./tmp/parse/dev-apple-result.info
    echo 'googlechromedev.dmg' >> ./tmp/parse/dev-apple-result.info
    
    sed -n '14p' ./tmp/parse/canary-x64.info > ./tmp/parse/canary-intel-result.info
    sed -n '21p' ./tmp/parse/canary-x64.info >> ./tmp/parse/canary-intel-result.info
    sed -n '23p' ./tmp/parse/canary-x64.info >> ./tmp/parse/canary-intel-result.info
    echo 'dl.google.com/chrome/mac/canary/' >> ./tmp/parse/canary-intel-result.info
    echo 'googlechromecanary.dmg' >> ./tmp/parse/canary-intel-result.info
    
    sed -n '14p' ./tmp/parse/canary-x86.info > ./tmp/parse/canary-apple-result.info
    sed -n '21p' ./tmp/parse/canary-x86.info >> ./tmp/parse/canary-apple-result.info
    sed -n '23p' ./tmp/parse/canary-x86.info >> ./tmp/parse/canary-apple-result.info
    echo 'dl.google.com/chrome/mac/universal/canary/' >> ./tmp/parse/canary-apple-result.info
    echo 'googlechromecanary.dmg' >> ./tmp/parse/canary-apple-result.info
    
done
