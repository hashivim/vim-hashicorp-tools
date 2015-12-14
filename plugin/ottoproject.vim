" ottoproject.vim - basic vim/otto integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_ottoproject") || v:version < 700 || &cp || !executable('otto')
  finish
endif
let g:loaded_ottoproject = 1

function! s:commands(A, L, P)
  return join([
  \ "build",
  \ "compile",
  \ "deploy",
  \ "dev",
  \ "infra",
  \ "status",
  \ "version"
  \ ], "\n")
endfunction

augroup ottoproject
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Otto execute '!otto '.<q-args>
augroup END

" vim:set et sw=2:
