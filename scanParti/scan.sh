#!/bin/bash

rm -f github-stars.txt

echo "[" >> github_stars.txt
for i in {1..100}
do
        curl https://api.github.com/repos/ontio/ontology/stargazers?page=$i | tail -n +2 | sed -e '$ d' >> github_stars.txt
done
echo "]" >> github_stars.txt


