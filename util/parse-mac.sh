echo ''
echo '-------------------------------------'
echo 'Parsing mac data ......'
echo '-------------------------------------'

for i in $@; do
    echo 'Parsing mac '${i}' data ......'
    
    sed -n '14p' ./tmp/parse/stable-x64.info > ./tmp/parse/stable-inter-result.info
    sed -n '21p' ./tmp/parse/stable-x64.info >> ./tmp/parse/stable-inter-result.info
    sed -n '23p' ./tmp/parse/stable-x64.info >> ./tmp/parse/stable-inter-result.info
    echo 'dl.google.com/chrome/mac/stable/GGRO/' >> ./tmp/parse/stable-inter-result.info
    echo 'googlechrome.dmg' >> ./tmp/parse/stable-inter-result.info
    
    sed -n '14p' ./tmp/parse/stable-x86.info > ./tmp/parse/stable-m1-result.info
    sed -n '21p' ./tmp/parse/stable-x86.info >> ./tmp/parse/stable-m1-result.info
    sed -n '23p' ./tmp/parse/stable-x86.info >> ./tmp/parse/stable-m1-result.info
    echo 'dl.google.com/chrome/mac/universal/stable/GGRO/' >> ./tmp/parse/stable-m1-result.info
    echo 'googlechrome.dmg' >> ./tmp/parse/stable-m1-result.info
    
    sed -n '14p' ./tmp/parse/beta-x64.info > ./tmp/parse/beta-inter-result.info
    sed -n '21p' ./tmp/parse/beta-x64.info >> ./tmp/parse/beta-inter-result.info
    sed -n '23p' ./tmp/parse/beta-x64.info >> ./tmp/parse/beta-inter-result.info
    echo 'dl.google.com/chrome/mac/beta/' >> ./tmp/parse/beta-inter-result.info
    echo 'googlechromebeta.dmg' >> ./tmp/parse/beta-inter-result.info
    
    sed -n '14p' ./tmp/parse/beta-x86.info > ./tmp/parse/beta-m1-result.info
    sed -n '21p' ./tmp/parse/beta-x86.info >> ./tmp/parse/beta-m1-result.info
    sed -n '23p' ./tmp/parse/beta-x86.info >> ./tmp/parse/beta-m1-result.info
    echo 'dl.google.com/chrome/mac/universal/beta/' >> ./tmp/parse/beta-m1-result.info
    echo 'googlechromebeta.dmg' >> ./tmp/parse/beta-m1-result.info
    
    sed -n '14p' ./tmp/parse/dev-x64.info > ./tmp/parse/dev-inter-result.info
    sed -n '21p' ./tmp/parse/dev-x64.info >> ./tmp/parse/dev-inter-result.info
    sed -n '23p' ./tmp/parse/dev-x64.info >> ./tmp/parse/dev-inter-result.info
    echo 'dl.google.com/chrome/mac/dev/' >> ./tmp/parse/dev-inter-result.info
    echo 'googlechromedev.dmg' >> ./tmp/parse/dev-inter-result.info
    
    sed -n '14p' ./tmp/parse/dev-x86.info > ./tmp/parse/dev-m1-result.info
    sed -n '21p' ./tmp/parse/dev-x86.info >> ./tmp/parse/dev-m1-result.info
    sed -n '23p' ./tmp/parse/dev-x86.info >> ./tmp/parse/dev-m1-result.info
    echo 'dl.google.com/chrome/mac/universal/dev/' >> ./tmp/parse/dev-m1-result.info
    echo 'googlechromedev.dmg' >> ./tmp/parse/dev-m1-result.info
    
    sed -n '14p' ./tmp/parse/canary-x64.info > ./tmp/parse/canary-inter-result.info
    sed -n '21p' ./tmp/parse/canary-x64.info >> ./tmp/parse/canary-inter-result.info
    sed -n '23p' ./tmp/parse/canary-x64.info >> ./tmp/parse/canary-inter-result.info
    echo 'dl.google.com/chrome/mac/canary/' >> ./tmp/parse/canary-inter-result.info
    echo 'googlechromecanary.dmg' >> ./tmp/parse/canary-inter-result.info
    
    sed -n '14p' ./tmp/parse/canary-x86.info > ./tmp/parse/canary-m1-result.info
    sed -n '21p' ./tmp/parse/canary-x86.info >> ./tmp/parse/canary-m1-result.info
    sed -n '23p' ./tmp/parse/canary-x86.info >> ./tmp/parse/canary-m1-result.info
    echo 'dl.google.com/chrome/mac/universal/canary/' >> ./tmp/parse/canary-m1-result.info
    echo 'googlechromecanary.dmg' >> ./tmp/parse/canary-m1-result.info
    
done
