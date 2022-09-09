#!/bin/bash

PDF=thesis.pdf
TEX=thesis.tex

echo + [$(git show -s --format=%ci)] $(pdfinfo $PDF | grep Pages | tr -d "Pages: ") $(texcount -sum -total -merge $TEX | grep "Sum count:" | tr -d "Sum count: ") >> countscripts/pages.md
# python countscripts/plot_pages.py
