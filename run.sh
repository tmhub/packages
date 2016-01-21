#!/bin/bash

if ! which satis >/dev/null; then
    echo Error: satis not found
    exit
fi

if [ ! "$1" = "" ] ; then
    PACKAGE=$1
else
    PACKAGE=''
fi

{
    echo 'git pull'
    git pull
} && {
    echo 'rm -rf include/*'
    rm -rf include/*
} && {
    echo 'satis build satis.json . '$PACKAGE
    satis build satis.json . $PACKAGE
} && {
    echo 'git add --all'
    git add --all
} && {
    echo 'git commit -m "satis build satis.json ."'
    git commit -m "satis build satis.json ."
} && {
    echo 'git push'
    git push
}
