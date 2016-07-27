" vaultproject.vim - basic vim/vault integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_vaultproject") || v:version < 700 || &cp || !executable('vault')
  finish
endif
let g:loaded_vaultproject = 1

function! s:commands(A, L, P)
  return join([
  \ "delete",
  \ "path-help",
  \ "read",
  \ "renew",
  \ "revoke",
  \ "server",
  \ "status",
  \ "unwrap",
  \ "write",
  \ "audit-disable",
  \ "audit-enable",
  \ "audit-list",
  \ "auth",
  \ "auth-disable",
  \ "auth-enable",
  \ "capabilities",
  \ "generate-root",
  \ "init",
  \ "key-status",
  \ "list",
  \ "mount",
  \ "mount-tune",
  \ "mounts",
  \ "policies",
  \ "policy-delete",
  \ "policy-write",
  \ "rekey",
  \ "remount",
  \ "rotate",
  \ "seal",
  \ "ssh",
  \ "step-down",
  \ "token-create",
  \ "token-lookup",
  \ "token-renew",
  \ "token-revoke",
  \ "unmount",
  \ "unseal",
  \ "version"
  \ ], "\n")
endfunction

augroup vaultproject
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Vault execute '!vault '.<q-args>
augroup END

" vim:set et sw=2:
