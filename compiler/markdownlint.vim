" Vim compiler file

if exists('current_compiler')
  finish
endif
let current_compiler = "mdl"

let s:cpo_save = &cpo
set cpo-=C

if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=
        \%f:%l:\ %m,
        \%f:\ %m\ found\ on\ line\ %l
CompilerSet makeprg=mdl

let &cpo = s:cpo_save
unlet s:cpo_save
