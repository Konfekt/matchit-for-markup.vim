The Vim plug-in `matchit` (see `:help matchit-intro`) comes bundled with Vim (see `:help matchit-install`) and makes it possible to extend the pairs between which hitting `%` lets the cursor jump.

You can make sure that the most recent version of it is loaded by adding the lines

```vim
" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif
```

to your `vimrc`, as [vim-sensible](https://github.com/tpope/vim-sensible) does.

Though `:help 'matchpairs'` says that `Only character pairs are allowed that are different, thus you cannot jump between two double quotes.`, there are heuristics (depending on the file type) such as white space before or after a delimiter (in prose) that can work around that restriction;
never completely, but in practice sufficiently.
This repository adds these heuristic settings for common prose markup file types such as `markdown`, `latex` and `text`.
