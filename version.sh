#!/bin/bash
# currentVersion="v1.4"
currentVersion="v1.4"
now=$(date +"%d%m%Y")
# now=$(ref=%(refname:short) dt=%(taggerdate:format:%s)" "refs/tags/*)
tagname="$currentVersion"_"$now"
echo $tagname
git checkout prod
git config credential.helper store
git stash
git pull origin prod
git tag $tagname -m "new release $tagname"
git push origin $tagname

