" vagrant.vim - basic vim/vagrant integration
" Maintainer: HashiVim <https://github.com/hashivim>

if exists("g:loaded_vagrant") || v:version < 700 || &cp || !executable('vagrant')
  finish
endif
let g:loaded_vagrant = 1

function! s:commands(A, L, P)
  return join([
  \ "box",
  \ "cap",
  \ "cloud",
  \ "destroy",
  \ "docker-exec",
  \ "docker-logs",
  \ "docker-run",
  \ "global-status",
  \ "halt",
  \ "help",
  \ "hostmanager",
  \ "init",
  \ "list-commands",
  \ "login",
  \ "package",
  \ "plugin",
  \ "port",
  \ "powershell",
  \ "provider",
  \ "provision",
  \ "push",
  \ "rdp",
  \ "reload",
  \ "resume",
  \ "rsync",
  \ "rsync-auto",
  \ "snapshot",
  \ "ssh",
  \ "ssh-config",
  \ "status",
  \ "suspend",
  \ "up",
  \ "upload",
  \ "validate",
  \ "version",
  \ "winrm",
  \ "winrm-config"
  \ ], "\n")
endfunction

augroup vagrant
  autocmd!
  autocmd VimEnter *
        \ command! -nargs=+ -complete=custom,s:commands Vagrant execute '!vagrant '.<q-args>
augroup END

" vim:set et sw=2:
