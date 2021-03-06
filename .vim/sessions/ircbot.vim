" ~/.vim/sessions/ircbot.vim:
" Vim session script for a single tab page.
" Created by session.vim 2.13.1 on 17 September 2020 at 22:57:21.
" Open this file in Vim and run :source % to restore your session.

call setqflist([])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let t:this_session=expand("<sfile>:p")
silent only
cd ~/projects/ircbot
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 main.py
badd +18 settings.py
" badd +33 utils.py
argglobal
%argdel
$argadd settings.py
$argadd main.py
edit main.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 81 + 62) / 125)
exe '2resize ' . ((&lines * 20 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 43 + 62) / 125)
exe '3resize ' . ((&lines * 8 + 15) / 31)
argglobal
if bufexists("main.py") | buffer main.py | else | edit main.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 88 - ((3 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 0
wincmd w
argglobal
if bufexists("settings.py") | buffer settings.py | else | edit settings.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((8 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 08|
wincmd w
argglobal
if bufexists("term://.//496623:/usr/bin/zsh") | buffer term://.//496623:/usr/bin/zsh | else | edit term://.//496623:/usr/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
exe '1resize ' . ((&lines * 20 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 81 + 62) / 125)
exe '2resize ' . ((&lines * 20 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 43 + 62) / 125)
exe '3resize ' . ((&lines * 8 + 15) / 31)
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFIc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
let s:winrestcmd = winrestcmd()
windo doautocmd SessionLoadPost
1wincmd w
silent! execute s:winrestcmd
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
