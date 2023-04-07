vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fm", vim.cmd.Ex)

vim.cmd[[
  vnoremap <C-c> "*y :let @+=@*<CR>
  map <C-v> "+P
  map <C-a> ggVG
]]
