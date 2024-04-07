--[[
ATTENTION: This settings depends on the username being 'noumeno', if not change this settings accordingly!
To set up you must create a 'nvim' folder inside your '/home/noumeno/.config' folder. After you must create an 'init.lua' folder and copy there the following code:

package.path = '/home/noumeno/linux_configuration/nvim/?.lua;' .. package.path

require('config')
]]--

-- This serve to bootstrap the lazy loading of the plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Require personal base settings
require("lua.base_settings")

-- This is where all the plugins are stored
require("lua.plugins")
-- This is where we setup lazy
require("lazy").setup{plugins}

-- These are the calls and the configurations for all the plugins
-- Copilot is not present in these configurations, but it is present (in the plugins.lua file)
require("lua.catpuccin")
require("lua.treesitter")
