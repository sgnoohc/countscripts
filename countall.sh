#!/bin/bash

HASHES=$(git log --graph --abbrev-commit  | grep "* commit" | awk '{print $3}')
THESIS=thesis.tex

for HASH in ${HASHES}; do
    git checkout --force ${HASH};
    pdflatex -interaction nonstopmode ${THESIS};
    pdflatex -interaction nonstopmode ${THESIS};
    pdflatex -interaction nonstopmode -G0 ${THESIS};
    sh countscripts/pages.sh
done
