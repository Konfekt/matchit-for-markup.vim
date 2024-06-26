let b:match_words = get(b:, 'match_words', &l:matchpairs) .
      \ ',' . '\%(^\|[ (/]\)\zs"' . ':' . '"\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs''' . ':' . '''\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \
      \ ',' . '\%(^\|[ (/]\)\zs\*[^* ]' . ':' . '[^* ]\zs\*\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs\*\*[^* ]' . ':' . '[^* ]\zs\*\*\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs\*\*\*' . ':' . '\*\*\*\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs_[^_ ]' . ':' . '[^_ ]\zs_\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs__[^_ ]' . ':' . '[^_ ]\zs__\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs___' . ':' . '___\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs`[^` ]' . ':' . '[^` ]\zs`\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|\s\)\zs```\w\+$' . ':' . '\%(^\|\s\)\zs```\ze$'
