local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

-- 
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'shiftround', true)

-- Buffer
utils.opt('o', 'hidden', true)


utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)

-- Window options
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'termguicolors' , true)


-- Other
utils.opt('o', 'clipboard','unnamed,unnamedplus')

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'


-- AutoComplete Brackets
utils.map('i','"','""<left>')
utils.map('i',"'","''<left>")
utils.map('i','(','()<left>')
utils.map('i','[','[]<left>')
utils.map('i','{','{}<left>')          
utils.map('i','{','CR> {<CR>}<ESC>O ') 
utils.map('i','{','<CR> {<CR>};<ESC>O')
