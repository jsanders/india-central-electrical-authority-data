#!/usr/bin/env sh

find . -name '*.pdf' -exec echo 'converting {}' \; -exec sh -c '\
  pdftotext -layout ${1} - |      \
  sed -n -e "s/,/ /g; s/[[:space:]]\{2,\}/,/g; p" > ${1//pdf/csv}
' _ {} \;
