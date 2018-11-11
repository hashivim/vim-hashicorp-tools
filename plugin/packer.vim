" packer.vim - basic vim/packer integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_packer") || v:version < 700 || &cp || !executable('packer')
  finish
endif
let g:loaded_packer = 1

function! s:commands(A, L, P)
  return join([
  \ "build",
  \ "fix",
  \ "inspect",
  \ "validate",
  \ "version"
  \ ], "\n")
endfunction

augroup packer
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Packer execute '!packer '.<q-args>
augroup END

" vim:set et sw=2:
