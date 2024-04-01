let b:match_words = get(b:, 'match_words', &l:matchpairs) .
      \ ',' . '\%(^\|[ (/]\)\zs\\(' . ':' . '\\)\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs\\\[' . ':' . '\\\]\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs\$[^$ ]' . ':' . '[^$ ]\zs\$\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs\$\$' . ':' . '\$\$\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\s*\)\zs\\begin{\(\w\+\*\?\)}' . ':' . '\%(^\s*\)\zs\\end{\1}'