mv zetsubou.games/.git tmpgit
rm -rf zetsubou.games/*
#wget      --recursive           --page-requisites      --html-extension      --convert-links    --restrict-file-names=windows        --domains zetsubou.games      --no-parent --no-check-certificate  https://zetsubou.games/
wget --recursive --page-requisites --html-extension --restrict-file-names=windows --domains zetsubou.games --no-parent --no-check-certificate https://zetsubou.games/
echo "zetsubou.games" > zetsubou.games/CNAME
#find ./ghost.test/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/.jpg\S*.jpg/.jpg/g'
mkdir ./zetsubou.games/rss/
rm ./zetsubou.games/rss/index.html
curl -k https://zetsubou.games/rss/ > ./zetsubou.games/rss/feed.xml
find ./zetsubou.games/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/index.html/rss\/feed.xml/g'
find ./zetsubou.games/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/rss\/" rel="self"/rss\/feed.xml" rel="self"/g'
find ./zetsubou.games/ -type d -name "amp" -exec rm -rf "{}" \;
#find ./zetsubou.games/ -type f -print0 | xargs -0 sed -i 's/http:\/\/ghost\.test//g'
#find ./zetsubou.games/ -type f -print0 | xargs -0 sed -i 's/\.\.\/\.\.\//\//g'
#find ./zetsubou.games/ -type f -print0 | xargs -0 sed -i 's/\.\.\//\//g'
mv tmpgit zetsubou.games/.git
