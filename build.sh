#!/bin/bash

hugo
cd public
git add .
git commit -a -m "Rebuild"
git push
