# Start the car

echo 'Building Documentation'

# PDF
echo '...PDF'

docker run --rm \
    -v `pwd`/pdfs:/pdfs \
    -v `pwd`/markdown:/source \
    -v `pwd`/support:/support \
    training/pandocker:latest \
    /support/frontmatter.md \
    --toc \
    --latex-engine=xelatex \
    --highlight-style=tango \
    -o /pdfs/aims_college.pdf \
    $(ls markdown/*md | cut -d\/ -f 2)


exit
 
    --template=/support/highvail.tex \
