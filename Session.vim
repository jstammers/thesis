let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/Storage/Dropbox/PhDWork/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +32 jstammersThesis.tex
badd +0 interferometry.tex
badd +0 jstammersThesis.log
argglobal
silent! argdel *
$argadd jstammersThesis.tex
edit interferometry.tex
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 31 + 22) / 45)
exe '2resize ' . ((&lines * 4 + 22) / 45)
exe '3resize ' . ((&lines * 6 + 22) / 45)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
8,8fold
9,10fold
11,11fold
12,12fold
5,13fold
14,15fold
50,53fold
63,65fold
78,90fold
112,114fold
117,120fold
124,136fold
42,136fold
184,203fold
242,266fold
204,266fold
273,276fold
267,301fold
137,301fold
318,328fold
302,441fold
472,476fold
479,479fold
480,480fold
477,481fold
442,481fold
16,481fold
525,534fold
535,543fold
544,576fold
493,576fold
482,576fold
579,579fold
580,580fold
581,581fold
582,582fold
624,632fold
633,661fold
592,661fold
667,672fold
678,681fold
662,682fold
685,685fold
686,686fold
687,687fold
705,709fold
717,720fold
732,735fold
753,756fold
760,766fold
739,766fold
683,766fold
577,766fold
770,770fold
771,771fold
772,772fold
768,773fold
776,776fold
777,777fold
778,778fold
779,779fold
774,780fold
783,783fold
784,784fold
781,786fold
767,786fold
788,788fold
787,788fold
790,797fold
789,797fold
799,803fold
804,805fold
806,815fold
798,815fold
1,815fold
820,827fold
816,827fold
1
normal! zo
577
normal! zo
683
normal! zo
739
normal! zo
767
normal! zo
816
normal! zo
let s:l = 14 - ((13 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 01|
wincmd w
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
wincmd w
argglobal
if bufexists('jstammersThesis.log') | buffer jstammersThesis.log | else | edit jstammersThesis.log | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1867 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1867
normal! 0
wincmd w
exe '1resize ' . ((&lines * 31 + 22) / 45)
exe '2resize ' . ((&lines * 4 + 22) / 45)
exe '3resize ' . ((&lines * 6 + 22) / 45)
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
