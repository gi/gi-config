#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

file="profile.xml"

pdir=~/".gconf/apps/gnome-terminal/profiles"

id=0

for file in "${DIR}"/profile*.xml; do
  echo "installing: ${file}"
  d="${pdir}/Profile${id}"
  [ -d "${d}" ] && echo "error: directory exists '${d}'" >&2 && exit 1
  mkdir -p "${d}"
  ln -s "${file}" "${pdir}/Profile${id}/%gconf.xml"
  ((id++))
done
