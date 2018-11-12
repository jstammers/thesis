let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/Storage/Dropbox/PhDWork/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1604 interferometry.tex
badd +1 jstammersThesis.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferomtry.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferometry.tex
badd +1870 jstammersThesis.log
badd +745 theory.tex
badd +57 Figures/Chapter2/interferometer.pdf_tex
badd +103 /media/Storage/Dropbox/CV/academic_cv.tex
badd +180 ~/.vimrc
badd +222 introduction.tex
badd +315 ~/texmf/tex/latex/hepthesis/hepthesis.cls
badd +146 jstammersThesis.bbl
badd +1 jstammersThesis.aux
badd +9 comment.cut
badd +30 Figures/Chapter6/detection.pdf_tex
badd +496 term://.//6570:/bin/bash
badd +56 Figures/Chapter3/motmaster_structure.pdf_tex
badd +317 compcontrol.tex
badd +788 mots.tex
badd +5 Figures/Chapter3/hsdio_timing.tex
badd +34 preamble.tex
badd +56 Figures/Chapter4/2D_mot_optics.pdf_tex
badd +49 frontmatter.tex
badd +9 description.tex
badd +629 ramanoptics.tex
badd +615 atompreparation.tex
badd +61 conclusion.tex
badd +1 Figures/Chapter5/StateSelection.svg
badd +72 Figures/Chapter5/state_selection.pdf_tex
badd +1 interferometry.aux
badd +979 Thesis.bib
badd +87 Figures/Chapter4/fibre_network.pdf_tex
argglobal
silent! argdel *
$argadd interferometry.tex
set stal=2
edit interferometry.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=vimtex#fold#level(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
843
normal! zo
859
normal! zo
877
normal! zo
914
normal! zo
926
normal! zo
944
normal! zo
950
normal! zo
963
normal! zo
1101
normal! zo
1216
normal! zo
1228
normal! zo
1235
normal! zo
1248
normal! zo
1250
normal! zo
1258
normal! zo
1266
normal! zo
1275
normal! zo
1281
normal! zo
1287
normal! zo
1301
normal! zo
1304
normal! zo
1310
normal! zo
1316
normal! zo
1330
normal! zo
1364
normal! zo
1401
normal! zo
1411
normal! zo
1428
normal! zo
1456
normal! zo
1461
normal! zo
1474
normal! zo
1482
normal! zo
1518
normal! zo
1566
normal! zo
1588
normal! zo
1603
normal! zo
1605
normal! zo
1623
normal! zo
1631
normal! zo
1657
normal! zo
1816
normal! zo
let s:l = 1584 - ((20 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1584
normal! 028|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabedit /media/Storage/Dropbox/PhDWork/Thesis/ramanoptics.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=vimtex#fold#level(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
3
normal! zo
12
normal! zo
48
normal! zo
56
normal! zo
96
normal! zo
126
normal! zo
137
normal! zo
138
normal! zo
188
normal! zo
224
normal! zo
319
normal! zo
468
normal! zo
515
normal! zo
let s:l = 479 - ((52 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
479
normal! 066|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabedit /media/Storage/Dropbox/PhDWork/Thesis/jstammersThesis.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=vimtex#fold#level(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
let s:l = 17 - ((6 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 024|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabnext 1
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
