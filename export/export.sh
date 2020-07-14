mv 127.0.0.1/.git tmpgit
rm -rf 127.0.0.1/*
wget      --recursive           --page-requisites      --html-extension      --convert-links    --restrict-file-names=windows        --domains 127.0.0.1      --no-parent --no-check-certificate  http://127.0.0.1/
echo "zetsubou.games" > 127.0.0.1/CNAME
find ./127.0.0.1/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/.jpg\S*.jpg/.jpg/g'
mkdir ./127.0.0.1/rss/
rm ./127.0.0.1/rss/index.html
curl -k http://127.0.0.1/rss/ > ./127.0.0.1/rss/feed.xml
find ./127.0.0.1/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/index.html/rss\/feed.xml/g'
find ./127.0.0.1/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/" rel="self"/rss\/feed.xml" rel="self"/g'
find ./127.0.0.1/ -type d -name "amp" -exec rm -rf "{}" \;
find ./127.0.0.1/ -type f -print0 | xargs -0 sed -i 's/http:\/\/127\.0\.0\.1//g'
#find ./127.0.0.1/ -type f -print0 | xargs -0 sed -i 's/\.\.\/\.\.\//\//g'
#find ./127.0.0.1/ -type f -print0 | xargs -0 sed -i 's/\.\.\//\//g'
mv tmpgit 127.0.0.1/.git
