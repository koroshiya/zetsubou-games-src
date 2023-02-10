mv zetsubou.games/.git tmpgit
mv zetsubou.games/.well-known wellknown
rm -rf zetsubou.games/*

wget --recursive --page-requisites --html-extension --restrict-file-names=windows --domains zetsubou.games --no-parent --no-check-certificate https://zetsubou.games/
echo "zetsubou.games" > zetsubou.games/CNAME

mv zetsubou.games/assets/built/casper.js* zetsubou.games/assets/built/casper.js
mv zetsubou.games/assets/built/screen.css*.css zetsubou.games/assets/built/screen.css
mv zetsubou.games/public/cards.min.css* zetsubou.games/public/cards.min.css
mv zetsubou.games/public/cards.min.js* zetsubou.games/public/cards.min.js
mv zetsubou.games/public/comment-counts.min.js* zetsubou.games/public/comment-counts.min.js

mv tmpgit zetsubou.games/.git
mv wellknown zetsubou.games/.well-known
