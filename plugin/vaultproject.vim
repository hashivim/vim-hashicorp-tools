" vaultproject.vim - basic vim/vault integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_vaultproject") || v:version < 700 || &cp || !executable('vault')
  finish
endif
let g:loaded_vaultproject = 1

function! s:commands(A, L, P)
  return join([
  \ "read",
  \ "write",
  \ "delete",
  \ "list",
  \ "login",
  \ "agent",
  \ "server",
  \ "status",
  \ "unwrap",
  \ "audit",
  \ "auth",
  \ "kv",
  \ "lease",
  \ "namespace",
  \ "operator",
  \ "path-help",
  \ "plugin",
  \ "policy",
  \ "secrets",
  \ "ssh",
  \ "token"
  \ ], "\n")
endfunction

augroup vaultproject
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Vault execute '!vault '.<q-args>
augroup END

" vim:set et sw=2:
