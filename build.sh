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
