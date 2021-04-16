echo ''
echo '-------------------------------------'
echo 'Start Generator ......'
echo '-------------------------------------'

for i in $@; do
    
    version_mac=$(sed -n '1p' ./tmp/parse/${i}-result.info)
    dl_mac_base=$(sed -n '4p' ./tmp/parse/${i}-result.info)
    dl_mac_alt_base=$(sed -n '4p' ./tmp/parse/${i}-result.info)
    dl_mac_slave_base=$(sed -n '4p' ./tmp/parse/${i}-result.info)
    dl_mac_file=$(sed -n '5p' ./tmp/parse/${i}-result.info)
    dl_mac="https://"${dl_mac_base}${dl_mac_file}
    dl_mac_alt="https://"${dl_mac_alt_base}${dl_mac_file}
    dl_mac_slave="https://"${dl_mac_slave_base}${dl_mac_file}
    sha256_mac=$(sed -n '2p' ./tmp/parse/${i}-result.info)
    size_raw_mac=$(sed -n '3p' ./tmp/parse/${i}-result.info)
    size_mac=$(awk 'BEGIN{printf "%.3f",('$size_raw_mac'/'1048576')}')" MB"
    
    sed -i "s|{{${i}-mac-version}}|$version_mac|g" tmp/index.html
    sed -i "s|{{${i}-mac-hash}}|$sha256_mac|g" tmp/index.html
    sed -i "s|{{${i}-dl-mac-main}}|$dl_mac|g" tmp/index.html
    sed -i "s|{{${i}-dl-mac-alternative}}|$dl_mac_alt|g" tmp/index.html
    sed -i "s|{{${i}-dl-mac-slave}}|$dl_mac_slave|g" tmp/index.html
    sed -i "s|{{${i}-mac-size}}|$size_mac|g" tmp/index.html
    
    sed -i "s|{{${i}-version}}|$version_mac|g" tmp/chrome.xml
    sed -i "s|{{${i}-hash}}|$sha256_mac|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-main}}|$dl_mac|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-alternative}}|$dl_mac_alt|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-slave}}|$dl_mac_slave|g" tmp/chrome.xml
    sed -i "s|{{${i}-size}}|$size_raw_mac|g" tmp/chrome.xml

done
