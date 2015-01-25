:set notitle
:set noshowmatch
:set title
:syntax on
:set ai
:set hls
:set nowrap
:map <F5> zh
:map <F8> zl
":map <F6> ^[ww*^[wwgF
:map <F6> <ESC>ww*<ESC>wwgF/^M
:set history=100
:set vb t_vb=
:ab zzz # FIXME #
:set fileformats=unix
": set noswf
:map , :n^M
:map = :e#^M

function ToggleWrap()
  if !exists("s:wrap_var")
    let s:wrap_var=1
    set wrap
  else
    unlet s:wrap_var
    set nowrap
  endif
endfunction

map <F5> :call ToggleWrap()^M

command! -range=% Reverse  <line1>,<line2>g/^/m0

" :100,150 g/^/m99

" Increment function
let g:I=0
function INC(increment)
let g:I =g:I + a:increment
return g:I
endfunction

" Decrement function
let g:I=0
function DEC(decrement)
let g:I =g:I - a:decrement
return g:I
endfunction


" Use :
" :let I=95
" :%s/@/\=INC(5)/
"set nobackup
"set nowritebackup
"set noswapfile

":'a, 'b ri
":'a, 'b s/^I//g
":'a, 'b s/\( *\)\(.*\)/\2\1/g

syntax on
filetype on
au BufNewFile,BufRead *.mq4 set filetype=cpp


function ToggleDOSUNIX()
  if !exists("s:dos_unix")
    let s:dos_unix=1
    set wrap
    :e ++ff=dos
  else
    unlet s:dos_unix
    :e ++ff=unix
  endif
endfunction

map <F7> :call ToggleDOSUNIX()<ENTER>

set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

set noai
