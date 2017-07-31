# vim-markdownlint

This plugin adds a compiler file for
[markdownlint](https://github.com/markdownlint/markdownlint).

## Installation

The plugin works with the major plugin and runtime path managers.

With [vim-plug][plug], place in your vimrc:

```vim
Plug 'riceissa/vim-markdownlint'
```

Then run `:PlugInstall`.

With [pathogen.vim][pathogen]:

    cd ~/.vim/bundle && \
    git clone https://github.com/riceissa/vim-markdownlint.git

## Usage

Below are some ways to use the plugin. Of course, you can set mappings to cut
down on the typing.

```vim
" Set the compiler
:compiler markdownlint

" Check the current file
:make %

" Check all markdown files in current directory using style.rb as the style
" file and with kramdown warnings on
:make -w -s style.rb *.md

" With dispatch.vim: https://github.com/tpope/vim-dispatch
:Dispatch mdl %
```

## License

Distributed under the same terms as Vim itself. See `:help license`.

[pathogen]: https://github.com/tpope/vim-pathogen
[plug]: https://github.com/junegunn/vim-plug
