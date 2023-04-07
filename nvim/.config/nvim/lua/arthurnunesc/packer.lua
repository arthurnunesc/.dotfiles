-- Only required if you have packer configured as `opt`
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- Custom LSP support
  use { 'neovim/nvim-lspconfig' }

  -- Theming
  use { "hachy/eva01.vim" , branch = "main", as = "eva01" }
  
  -- GitHub Copilot
  use { 'github/copilot.vim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
  use { 'nvim-treesitter/playground', {run = ':TSInstall query'} }
  use { 'ThePrimeagen/harpoon' }
  
  -- 42 stuff
  use { 'https://github.com/arthurnunesc/42-header.vim.git' }
  use {
    'https://github.com/arthurnunesc/42-norminette.vim.git',
    requires = {'vim-syntastic/syntastic'} 
  }
 
  -- Python stuff
  vim.cmd[[let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python']]  
  use { 'psf/black' }

  -- Shell script stuff
  use { 'https://github.com/itspriddle/vim-shellcheck' }
end) 

