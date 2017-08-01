" consul.vim - basic vim/consul integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_consul") || v:version < 700 || &cp || !executable('consul')
  finish
endif
let g:loaded_consul = 1

function! s:commands(A, L, P)
  return join([
  \ "agent",
  \ "catalog",
  \ "event",
  \ "exec",
  \ "force-leave",
  \ "info",
  \ "join",
  \ "keygen",
  \ "keyring",
  \ "kv",
  \ "leave",
  \ "lock",
  \ "maint",
  \ "members",
  \ "monitor",
  \ "operator",
  \ "reload",
  \ "rtt",
  \ "snapshot",
  \ "validate",
  \ "version",
  \ "watch"
  \ ], "\n")
endfunction

augroup consul
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Consul execute '!consul '.<q-args>
augroup END

" vim:set et sw=2:
