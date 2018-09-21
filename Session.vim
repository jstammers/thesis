let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/Storage/Dropbox/PhDWork/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 interferometry.tex
badd +47 jstammersThesis.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferomtry.tex
badd +1 /media/Storage/Dropbox/PhDWork/Software/Showcase/interferometry.tex
badd +1870 jstammersThesis.log
badd +520 theory.tex
badd +57 Figures/Chapter2/interferometer.pdf_tex
badd +103 /media/Storage/Dropbox/CV/academic_cv.tex
badd +180 ~/.vimrc
badd +83 introduction.tex
argglobal
silent! argdel *
$argadd interferometry.tex
edit jstammersThesis.tex
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
10
normal! zo
let s:l = 46 - ((45 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 014|
lcd /media/Storage/Dropbox/PhDWork/Thesis
tabnext 1
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
