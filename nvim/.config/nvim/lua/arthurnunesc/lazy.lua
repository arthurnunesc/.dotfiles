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

local plugins = {
  -- Theming
  { "https://github.com/aonemd/quietlight.vim.git" , name = "quietlight" },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { "catppuccin/nvim", name = "catppuccin" },
  { "neovim/nvim-lspconfig" },
  {"nvim-telescope/telescope.nvim", version = "0.1.1", dependencies = "nvim-lua/plenary.nvim"},
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-treesitter/playground", build = ":TSInstall query" },
  { "github/copilot.vim" },
  -- Navigation
  { "ThePrimeagen/harpoon" },
  -- 42 stuff
  { "https://github.com/arthurnunesc/42-header.vim.git" },
  { "https://github.com/arthurnunesc/42-norminette.vim.git", dependencies = "vim-syntastic/syntastic" },
  -- Python stuff
  { "psf/black" },
  -- Shell script stuff
  { "https://github.com/itspriddle/vim-shellcheck" },
}

-- Defining black venv location
vim.cmd('let g:python3_host_prog = $HOME . "/.local/venv/nvim/bin/python"')

require("lazy").setup(plugins, opts) 
