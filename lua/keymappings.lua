local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
-- Better Window navigation
utils.map('n', '<Leader>h', '<cmd>wincmd h<CR>')
utils.map('n', '<Leader>j', '<cmd>wincmd j<CR>')
utils.map('n', '<Leader>k', '<cmd>wincmd k<CR>')
utils.map('n', '<Leader>l', '<cmd>wincmd l<CR>')
