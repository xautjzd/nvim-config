-- lua configuration guide, refer: https://neovim.io/doc/user/lua-guide.html#_-vim.opt

-- bootstrap plugin manager: lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- it must load before lazy plugin
vim.g.mapleader = " "

require("lazy").setup({
      spec = {
	 { import = "plugins" },
      },
})

require "configs.basic"
require "configs.keybindings"
