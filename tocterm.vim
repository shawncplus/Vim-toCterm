:set nohls
:%s/\vgui(bg|fg)\=#([^ ]+)( |$)/\="gui".submatch(1)."=#".submatch(2)." cterm".submatch(1)."=".substitute(system('rgb2cterm '.submatch(2)), "\n", '', '').submatch(3)/g
