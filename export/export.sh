rm -rf 192.168.1.196/*
wget      --recursive           --page-requisites      --html-extension      --convert-links    --restrict-file-names=windows        --domains 192.168.1.196      --no-parent --no-check-certificate  http://192.168.1.196/
echo "zetsubou.games" > 192.168.1.196/CNAME
find ./192.168.1.196/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/.jpg\S*.jpg/.jpg/g'
rm ./192.168.1.196/rss/index.html
curl -k http://192.168.1.196/rss/ > ./192.168.1.196/rss/feed.xml
find ./192.168.1.196/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/index.html/rss\/feed.xml/g'
find ./192.168.1.196/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/" rel="self"/rss\/feed.xml" rel="self"/g'
find ./192.168.1.196/ -type d -name "amp" -exec rm -rf "{}" \;
find ./192.168.1.196/ -type f -print0 | xargs -0 sed -i 's/http:\/\/192\.168\.1\.196/https:\/\/zetsubou\.games/g'
