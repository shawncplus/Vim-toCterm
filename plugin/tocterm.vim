" ============================================================================
" File:         tocterm.vim
" Description:  VIM plugin that makes gui-colorschemes usable with xterm
" Author:       Shawn Biddle
" URL:          https://github.com/shawncplus/Vim-toCterm
"               https://github.com/coldfix/Vim-toCterm
" License:      GPL v2.0
" ============================================================================

let s:path = expand('<sfile>:h').'/../script/'

function! s:ToCterm()
    set nohls
    %s/\vgui(bg|fg)\=#([^ ]+)( |$)/\="gui".submatch(1)."=#".submatch(2)." cterm".submatch(1)."=".substitute(system("'".s:path."rgb2cterm' ".submatch(2)), "\n", '', '').submatch(3)/g
endfunction

command! ToCterm :call <SID>ToCterm()<CR>
