let b:match_words = get(b:, 'match_words', &l:matchpairs) .
      \ ',' . '\%(^\|[ (/]\)\zs"' . ':' . '"\ze\%($\|[ )/.\,;\:?!\-]\)' .
      \ ',' . '\%(^\|[ (/]\)\zs''' . ':' . '''\ze\%($\|[ )/.\,;\:?!\-]\)'
