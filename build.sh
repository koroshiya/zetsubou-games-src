#!/bin/bash

hugo

git add .
git commit -a -m "Rebuild"
git push

cd public
git add .
git commit -a -m "Rebuild"
git push
