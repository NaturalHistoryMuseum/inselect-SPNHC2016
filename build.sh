rm -rf output
mkdir output
pandoc --number-sections \
    --from=markdown_github-hard_line_breaks+header_attributes+superscript+link_attributes+yaml_metadata_block \
    --include-before-body=header.html \
    --include-after-body=footer.html \
    --css=github-pandoc.css \
    --template=html.template \
    --standalone \
    --toc \
    --toc-depth=1 \
    worksheet.md > output/worksheet.html
mkdir output/images
cp github-pandoc.css output/
cp images/* output/images/
