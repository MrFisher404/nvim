-- map leader to space
vim.g.mapleader = ' '

-- local
local fn = vim.fn
local execute = vim.api.nvim_command

-- sensible defaults
require('settings')

-- key mappings
require('keymappings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins
require('plugins')

-- LSP 
require('lsp_lua')

-- Config
require('config')

-- Plugin Configuration
require('plugin_config')

