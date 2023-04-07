augroup black_on_save
  autocmd!
  autocmd BufWritePre *.sh ShellCheck
augroup end

nnoremap <c-g> :ShellCheck<CR>

