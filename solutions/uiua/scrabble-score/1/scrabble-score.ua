# Calculate the scrabble score of a word
# Score ? Word
Score ← |1 /+≡⍣(
  1 °1/↥⌕:"aeioulnrst" | 2°1↥⌕:"dg"
| 3 °1/↥⌕:"bcmp"
| 4 °1/↥⌕:"fhvwy"
| 5 °1/↥⌕:"k"
| 8 °1/↥⌕:"jx"
| 10 °1/↥⌕:"qz"
| 0
) ¯⌵
