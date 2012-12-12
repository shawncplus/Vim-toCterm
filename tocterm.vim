set nohls
let s:dir = expand('<sfile>:h').'/'
%s/\vgui(bg|fg)\=#([^ ]+)( |$)/\="gui".submatch(1)."=#".submatch(2)." cterm".submatch(1)."=".substitute(system("'".s:dir."rgb2cterm.php' ".submatch(2)), "\n", '', '').submatch(3)/g

