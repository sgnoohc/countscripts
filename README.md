## Counting pages and words from my thesis

Assuming you have something like:

    thesis/
        thesis.tex
        blah.bib
        figures/
        ...
        ...
        ...

Clone this repository like

    thesis/
        thesis.tex
        blah.bib
        figures/
        ...
        ...
        countscripts/
        ...


Then the following script would get all the commits and then compile the `thesis.tex` and run `pages.sh` to compute the word/page counts, and store them to `pages.md`

    sh countscripts/countall.sh

Since `git show -s --format=%ci` has different format from what was expected from `plot_pages.py` there is a converter script.

    sh countscripts/convert_time.sh

Which spits out

    countscripts/pages_converted.md

Then run the plotting script

    
