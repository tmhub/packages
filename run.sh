#!/bin/bash

echo 'git pull'
git pull
echo 'rm -rf include/*'
rm -rf include/*
echo 'satis build satis.json .'
satis build satis.json .
echo 'git add --all'
git add --all
echo 'git commit -m "satis build satis.json ."'
git commit -m "satis build satis.json ."
echo 'git push'
git push
