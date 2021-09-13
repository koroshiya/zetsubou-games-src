mv ghost.test/.git tmpgit
rm -rf ghost.test/*
wget      --recursive           --page-requisites      --html-extension      --convert-links    --restrict-file-names=windows        --domains ghost.test      --no-parent --no-check-certificate  http://ghost.test/
echo "zetsubou.games" > ghost.test/CNAME
find ./ghost.test/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/.jpg\S*.jpg/.jpg/g'
mkdir ./ghost.test/rss/
rm ./ghost.test/rss/index.html
curl -k http://ghost.test/rss/ > ./ghost.test/rss/feed.xml
find ./ghost.test/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/index.html/rss\/feed.xml/g'
find ./ghost.test/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/" rel="self"/rss\/feed.xml" rel="self"/g'
find ./ghost.test/ -type d -name "amp" -exec rm -rf "{}" \;
find ./ghost.test/ -type f -print0 | xargs -0 sed -i 's/http:\/\/ghost\.test//g'
#find ./ghost.test/ -type f -print0 | xargs -0 sed -i 's/\.\.\/\.\.\//\//g'
#find ./ghost.test/ -type f -print0 | xargs -0 sed -i 's/\.\.\//\//g'
mv tmpgit ghost.test/.git
