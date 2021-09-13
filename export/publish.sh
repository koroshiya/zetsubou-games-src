#!/bin/bash

#rm -rf 192.168.123.196/.git
#cp -r git 192.168.123.196/.git
cd ghost.test
git add .
git commit -m "Rebuild"
git push
