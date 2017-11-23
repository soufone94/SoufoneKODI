#!/bin/zsh

KODI_REPO_DIR=~/personalrepos/kodi/
PLUGIN_STORE_DIR=.

repos=(
  plugin.video.watchkissanime
  plugin.video.fitnessblender
  script.module.cfscrape
  script.module.js2py
  script.module.pyjsparser
  script.module.tzlocal
)

#for repo in $repos; do rm -rf $PLUGIN_STORE_DIR/$repo; done

repoPaths=()
for repo in $repos; do repoPaths+=$KODI_REPO_DIR$repo; done
python create_repository.py $repoPaths

if [[ -f ../addons.xml ]]; then
  rm -rf ../addons.xml*
fi

mv addons.xml* ..

