let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/Storage/Dropbox/PhDWork/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1311 interferometry.tex
badd +18 jstammersThesis.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferomtry.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferometry.tex
badd +1870 jstammersThesis.log
badd +375 theory.tex
badd +57 Figures/Chapter2/interferometer.pdf_tex
badd +103 /media/Storage/Dropbox/CV/academic_cv.tex
badd +180 ~/.vimrc
badd +73 introduction.tex
badd +315 ~/texmf/tex/latex/hepthesis/hepthesis.cls
badd +146 jstammersThesis.bbl
badd +1 jstammersThesis.aux
badd +1 comment.cut
badd +30 Figures/Chapter6/detection.pdf_tex
badd +496 term://.//6570:/bin/bash
badd +56 Figures/Chapter3/motmaster_structure.pdf_tex
badd +276 compcontrol.tex
badd +316 mots.tex
badd +5 Figures/Chapter3/hsdio_timing.tex
badd +34 preamble.tex
badd +56 Figures/Chapter4/2D_mot_optics.pdf_tex
badd +49 frontmatter.tex
badd +9 description.tex
badd +61 ramanoptics.tex
badd +1 atompreparation.tex
badd +0 conclusion.tex
argglobal
silent! argdel *
$argadd interferometry.tex
set stal=2
edit atompreparation.tex
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
2
normal! zo
let s:l = 16 - ((2 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 02|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabedit /media/Storage/Dropbox/PhDWork/Thesis/conclusion.tex
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
let s:l = 61 - ((50 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 029|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabnext 3
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
