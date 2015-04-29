" vaultproject.vim - basic vim/vault integration
" Maintainer: Mark Cornick <https://github.com/markcornick>

if exists("g:loaded_vaultproject") || v:version < 700 || &cp || !executable('vault')
  finish
endif
let g:loaded_vaultproject = 1

function! s:commands(A, L, P)
  return join([
  \ "audit-disable",
  \ "audit-enable",
  \ "audit-list",
  \ "auth",
  \ "auth-disable",
  \ "auth-enable",
  \ "delete",
  \ "help",
  \ "init",
  \ "mount",
  \ "mounts",
  \ "policies",
  \ "policy-delete",
  \ "policy-write",
  \ "read",
  \ "remount",
  \ "renew",
  \ "revoke",
  \ "seal",
  \ "server",
  \ "status",
  \ "token-create",
  \ "token-renew",
  \ "token-revoke",
  \ "unmount",
  \ "unseal",
  \ "version",
  \ "write"
  \ ], "\n")
endfunction

augroup vaultproject
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Vault execute '!vault '.<q-args>
augroup END

" vim:set et sw=2:
