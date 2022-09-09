cat countscripts/pages.md | sed 's/ -0600/s/' | sed 's/\ /-/2' | sed 's/:/h/' | sed 's/:/m/' | sort -g > countscripts/pages_converted.md
