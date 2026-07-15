# Checks if a string is an isogram
# Result ? Phrase
IsIsogram ← |1 (
  ▽±.⌵ # filter out only alphabets
  ⍆
  ⊸◴
  ≍
)
