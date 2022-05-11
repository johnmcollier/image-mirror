#!/bin/sh

DEST_ORG=$1

cat mirror_list.txt | while read line || [[ -n $image_repo ]];
do
   echo "Mirroring $image_repo to $DEST_ORG"
   skopeo sync --src docker --dest docker $image_repo $DEST_ORG --override-os linux
done