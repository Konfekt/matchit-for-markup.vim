setlocal matchpairs-=<:>
let b:match_words = &l:matchpairs .
      \ ',' . '\%(^\|[ (/]\)\@<="' . ':' . '"\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=''' . ':' . '''\%($\|[ )/.\,;\:?!\-]\)'
let b:match_words .=
      \ ',' . '\%(^\|[ (/]\)\@<=\*' . ':' . '\*\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=\*\*' . ':' . '\*\*\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=\*\*\*' . ':' . '\*\*\*\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=_' . ':' . '_\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=__' . ':' . '__\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=___' . ':' . '___\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\@<=`[^`]' . ':' . '[^`]\@<=`\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|\s\)\@<=```' . ':' . '```\%($\|\s\)'
let b:match_words .=
      \ ',' . '\%(^\|[ (]\)\@<=\$[^$]' . ':' . '[^$]\@<=\$\%($\|[ ).\,;\:?!\-]\)' .
      \ ',' . '\%(^\|\s\)\@<=\$\$' . ':' . '\$\$\%($\|\s\)' .
      \ ',' . '\%(^\s*\)\@<=\\begin{\(\w\+\*\?\)}' . ':' . '\%(^\s*\)\@<=\\end{\1}'