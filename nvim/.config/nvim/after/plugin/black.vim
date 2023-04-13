augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py  Black
augroup end

nnoremap <F9> :Black<CR>
