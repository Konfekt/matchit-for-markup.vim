setlocal matchpairs+=<:>
let b:match_words = &l:matchpairs .
      \ ',' . '\%(^\|[ (/]\)\@<="' . ':' . '"\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=''' . ':' . '''\%($\|[ )/.\,;\:?!\-]\)'
let b:match_words .=
      \ ',' . '\%(^\|[ (/]\)\@<=\*' . ':' . '\*\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=\*\*' . ':' . '\*\*\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=_' . ':' . '_\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=__' . ':' . '__\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=`[^`]' . ':' . '[^`]\@<=`\%($\|[ )/.\,;\:?!\-]\)'
