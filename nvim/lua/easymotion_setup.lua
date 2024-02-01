local bindings = require "keymap"

vim.cmd [[
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
]]
-- " find character
bindings.nmap(",s","<Plug>(easymotion-overwin-f)")
--
-- " find 2 characters
bindings.nmap(",d","<Plug>(easymotion-overwin-f2)")
--
-- " global word find
bindings.nmap(",g","<Plug>(easymotion-overwin-w)")
--
-- " t/f (find character on line)
bindings.nmap(",t","<Plug>(easymotion-tl)")
bindings.nmap(",f","<Plug>(easymotion-fl)")
--
-- " move to start of line when jumping lines
-- let g:EasyMotion_startofline = 1

-- " jk/l motions: Line motions
bindings.nmap(",j","<Plug>(easymotion-j)")
bindings.nmap(",k","<Plug>(easymotion-k)")
bindings.nmap(",/","<Plug>(easymotion-overwin-line)")
--
bindings.nmap(",a","<Plug>(easymotion-jumptoanywhere)")
