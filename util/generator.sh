echo ''
echo '-------------------------------------'
echo 'Start Generator ......'
echo '-------------------------------------'

for i in $@; do
    version_win=$(sed -n '1p' ./tmp/parse/${i}-result.info)
    dl_win_base=$(sed -n '2p' ./tmp/parse/${i}-result.info)
    dl_win_alt_base=$(sed -n '3p' ./tmp/parse/${i}-result.info)
    dl_win_slave_base=$(sed -n '4p' ./tmp/parse/${i}-result.info)
    dl_win_file=$(sed -n '6p' ./tmp/parse/${i}-result.info)
    
    dl_win="https://"${dl_win_base}${dl_win_file}
    dl_win_alt="https://"${dl_win_alt_base}${dl_win_file}
    dl_win_slave="https://"${dl_win_slave_base}${dl_win_file}
    sha256_win=$(sed -n '5p' ./tmp/parse/${i}-result.info)
    size_raw_win=$(sed -n '7p' ./tmp/parse/${i}-result.info)
    size_win=$(awk 'BEGIN{printf "%.3f",('$size_raw_win'/'1048576')}')" MB"

    sed -i "s|{{${i}-win-version}}|$version_win|g" tmp/index.html
    sed -i "s|{{${i}-win-hash}}|$sha256_win|g" tmp/index.html
    sed -i "s|{{${i}-dl-win-main}}|$dl_win|g" tmp/index.html
    sed -i "s|{{${i}-dl-win-alternative}}|$dl_win_alt|g" tmp/index.html
    sed -i "s|{{${i}-dl-win-slave}}|$dl_win_slave|g" tmp/index.html
    sed -i "s|{{${i}-win-size}}|$size_win|g" tmp/index.html

    sed -i "s|{{${i}-version}}|$version_win|g" tmp/chrome.xml
    sed -i "s|{{${i}-hash}}|$sha256_win|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-main}}|$dl_win|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-alternative}}|$dl_win_alt|g" tmp/chrome.xml
    sed -i "s|{{${i}-dl-slave}}|$dl_win_slave|g" tmp/chrome.xml
    sed -i "s|{{${i}-size}}|$size_raw_win|g" tmp/chrome.xml
done
