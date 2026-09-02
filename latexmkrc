# Configurazione latexmk per una compilazione pulita.
#
#   latexmk        -> compila src/LibroMatematica.tex, PDF in dist/, intermedi in build/
#   latexmk -c     -> rimuove gli intermedi, tiene il PDF
#   latexmk -C     -> rimuove tutto, PDF compreso

$pdf_mode = 1;                       # produce PDF con pdflatex
$out_dir  = 'dist';                  # dove finisce il PDF
$aux_dir  = 'build';                 # dove finiscono .aux .log .toc ...
@default_files = ('src/LibroMatematica.tex');

$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
