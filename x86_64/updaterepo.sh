#!/bin/bash

rm jslinux-repository*

echo "repo-add"
repo-add -s -n -R jslinux-repository.db.tar.gz *.pkg.tar.zst

sleep 1

rm jslinux-repository.db
rm jslinux-repository.db.sig

rm jslinux-repository.files
rm jslinux-repository.files.sig

mv jslinux-repository.db.tar.gz jslinux-repository.db
mv jslinux-repository.db.tar.gz.sig jslinux-repository.db.sig

mv jslinux-repository.files.tar.gz jslinux-repository.files
mv jslinux-repository.files.tar.gz.sig jslinux-repository.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
