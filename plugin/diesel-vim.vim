" Title: Diesel Vim
" Description: A plugin to wrap common diesel commands
" Last Change: January 2023
" Maintainer: Daniel Casserly <https://github.com/casserlyprogramming>

if exists("g:loaded_dieselvim")
    finish
endif

let g:loaded_dieselvim = 1

command! -nargs=0 DGenerate lua require("diesel-vim").generate()
command! -nargs=0 DRun lua require("diesel-vim").migrate()
command! -nargs=0 DRedo lua require("diesel-vim").redo()
command! -nargs=0 DRevert lua require("diesel-vim").redo()
command! -nargs=0 DSetup lua require("diesel-vim").setup()
command! -nargs=0 DReset lua require("diesel-vim").reset()
command! -nargs=0 DPrint lua require("diesel-vim").print_schema()
command! -nargs=1 D lua require("diesel-vim").any_command("<args>")
