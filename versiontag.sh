#!/bin/bash
# currentVersion="v2.0"
currentVersion="v1.0"
now=$(date +"%m-%d-%Y")
# now=$(ref=%(refname:short) dt=%(taggerdate:format:%s)" "refs/tags/*)
tagname="$currentVersion"-"$now"
echo $tagname
git pull origin master
git tag $tagname -m "new release $tagname"
git push origin $tagname