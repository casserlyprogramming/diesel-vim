# DIESEL VIM

This plugin is a wrapper around the most common diesel commands and gives full access to the rest of the [DIESEL CLI](https://github.com/diesel-rs/diesel/tree/master/diesel_cli) from within NeoVim

The plugin is inspired by [Vim Fugitive](https://github.com/tpope/vim-fugitive)
aand the syntax for commands is similar.

## Installation
Install using your usual package manager. Using Vim-Plug the syntax is: 

```
Plug 'casserlyprogramming/diesel-vim'
```
then run 

`:PlugInstall`

## Usage

To run any command that the Diesel CLI allows you can simply use: `:D` followed
by the rest of the diesel command. So for `diesel migration redo` write `:D
migration redo`

Currently supported commands: 
- `DGenerate`: will ask for a migration name and then run generate
- `DRun`: will run migrations
- `DRedo`: will redo migrations (equivalent to revert + run)
- `DRevert`: Will undo the last migration
- `DSetup`: Will ask for a database url and then run setup
- `DReset`: Will reset the current database from the URL
- `DPrint`: Will print the schema
- `D`: will run the command passed as an argument

## Contributing
This plugin is useful to me so I'm sharing it. I will happily accept PRs that
make sense to the project and will accept issues if you wish to contribute in
that way. I can't see this growing too much unless the Diesel CLI does too. 
