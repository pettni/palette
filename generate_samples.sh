#!/bin/zsh

for theme in caltech green red goblue blue; do
  sed -i "s/colorscheme=\w\+/colorscheme=${theme}/g;" example.tex
  pdflatex.exe example.tex
  convert -resize 240 example.pdf png:samples/ex-$theme-small.png
  cp example.pdf samples/ex-$theme.pdf
done