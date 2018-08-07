let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/Storage/Dropbox/PhDWork/Thesis
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 jstammersThesis.tex
badd +0 atompreparation.tex
badd +226 latexSuiteTemp0.tex
badd +22 ~/texmf/tex/generic/pgf/basiclayer/pgfcore.code.tex
badd +0 jstammersThesis.log
badd +0 interferometry.tex
argglobal
silent! argdel *
$argadd jstammersThesis.tex
set stal=2
edit atompreparation.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
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
2,7fold
16,19fold
22,27fold
20,27fold
31,37fold
28,40fold
44,49fold
52,55fold
57,60fold
63,66fold
68,71fold
75,80fold
50,81fold
84,87fold
91,96fold
82,99fold
41,99fold
8,99fold
107,107fold
108,108fold
109,109fold
110,110fold
111,111fold
116,123fold
124,131fold
104,131fold
137,142fold
133,142fold
147,154fold
157,162fold
143,162fold
132,162fold
167,172fold
165,172fold
176,181fold
184,191fold
173,192fold
163,192fold
193,203fold
204,206fold
100,206fold
1,206fold
1
normal! zo
2
normal! zo
let s:l = 2 - ((1 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
tabedit interferometry.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
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
53,56fold
66,68fold
81,93fold
115,117fold
120,123fold
127,139fold
44,139fold
187,206fold
245,269fold
207,269fold
276,279fold
270,304fold
140,304fold
321,331fold
305,444fold
475,479fold
482,482fold
483,483fold
480,484fold
445,484fold
16,484fold
528,537fold
538,546fold
547,579fold
496,579fold
485,579fold
582,582fold
583,583fold
584,584fold
585,585fold
628,636fold
637,643fold
595,644fold
669,677fold
645,677fold
678,680fold
580,680fold
684,684fold
685,685fold
686,686fold
682,687fold
690,690fold
691,691fold
692,692fold
693,693fold
688,694fold
697,697fold
698,698fold
695,700fold
681,700fold
702,702fold
701,702fold
704,711fold
703,711fold
713,727fold
712,727fold
1,727fold
let s:l = 590 - ((589 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
590
normal! 01|
tabedit jstammersThesis.log
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 34 + 22) / 44)
exe '2resize ' . ((&lines * 6 + 22) / 44)
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1849 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1849
normal! 0
wincmd w
exe '1resize ' . ((&lines * 34 + 22) / 44)
exe '2resize ' . ((&lines * 6 + 22) / 44)
tabnext 3
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
