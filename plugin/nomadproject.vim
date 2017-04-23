" nomadproject.vim - basic vim/nomad integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_nomadproject") || v:version < 700 || &cp || !executable('nomad')
  finish
endif
let g:loaded_nomadproject = 1

function! s:commands(A, L, P)
  return join([
  \ "agent",
  \ "agent-info",
  \ "alloc-status",
  \ "client-config",
  \ "eval-status",
  \ "fs",
  \ "init",
  \ "inspect",
  \ "logs",
  \ "node-drain",
  \ "node-status",
  \ "plan",
  \ "run",
  \ "server-force-leave",
  \ "server-join",
  \ "server-members",
  \ "status",
  \ "stop",
  \ "validate",
  \ "version"
  \ ], "\n")
endfunction

augroup nomadproject
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Nomad execute '!nomad '.<q-args>
augroup END

" vim:set et sw=2:
