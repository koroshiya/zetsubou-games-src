#!/bin/bash

rm -rf 192.168.1.196/.git
cp -r git 192.168.1.196/.git
cd 192.168.1.196
git add .
git commit -m "Rebuild"
git push
