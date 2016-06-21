Files for the Inselect workshop at SPNHC 2016 Berlin.

# Build env
```
brew install pandoc
mkvirtualenv --python=$HOME/local/python-3.5.1/bin/python3 inselect-spnhc2016
pip install ghp-import
```

# Build

```
rm -rf output
mkdir output
pandoc --number-sections \
    --from=markdown_github-hard_line_breaks+header_attributes+superscript+link_attributes \
    --css=github-pandoc.css \
    --standalone \
    worksheet.md > output/worksheet.html
mkdir output/images
cp github-pandoc.css output/
cp images/* output/images/
open output/worksheet.html
```

# Publish
```
workon inselect-spnhc2016
ghp-import output
git push origin gh-pages
```

The worksheet will be at
https://naturalhistorymuseum.github.io/inselect-SPNHC2016/worksheet.html

# Screenshots
When taking screenshots launch Inselect using

```
./inselect.py -w 1033x768 
```

This resolution gives just enough room for the Objects view to contain three
columns.

# Setup laptop for workshop

* Mains
* Ethernet  / Wifi
* Close all programs, including Dropbox and Box
* Make sure you have at least 10 GB disk space free in case OS X goes crazy and
starts eating up space
* Open in text editor
    * `limacodidae.inselect_template`
    * `sialadae.inselect_template`
* Increase font sizes in
    * SublimeText
    * Terminal
* Inselect
    * Maximised but not full screen
    * Light background colours
    * Darwin Core template
    * No cookie cutter
    * Order by rows
* Terminal

    ```
    cd ~/InselectExamples/Webinar/Documents/ToProcess
    /Volumes/inselect-0.1.33/ingest -c ../5 x 20 slide.inselect_cookie_cutter . .
    ```
