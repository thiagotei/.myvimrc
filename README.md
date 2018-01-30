# .vimrc
My .vimrc with vim-airline

This one uses the python specific stuff in dir ```.vim/after/ftplugin/python.vim``` .
The python.vim file has the following:
```
setlocal tabstop=4$
setlocal softtabstop=4$
setlocal shiftwidth=4$
setlocal textwidth=80$
setlocal smarttab$
setlocal noexpandtab$
setlocal autoindent$
```

The idea to use this strategy instead of ```autocmd FileType python``` comes from http://henry.precheur.org/vim/python .
"Now every files detected as Python files by Vim get the previous commands executed. Even those with filenames which do not end with .py".
