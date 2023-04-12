augroup black_on_save
  autocmd!
  autocmd BufWritePre *.sh ShellCheck
augroup end

nnoremap <C-g> :ShellCheck<CR>

