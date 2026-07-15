Letters         ← +@a⇡26
Digits          ← +@0⇡10
ValidCharacters ← ⊂ Letters Digits

RemoveSpaces ← ▽ ⊸∊ValidCharacters ¯⌵
Translate    ← ⍜(-@a|˜-25)
# Implement the encoding process for the Atbash cipher
# Ciphertext ? Plaintext
Encode ← |1 (
  RemoveSpaces
  ⍜▽Translate ⌵± .
  +1⌊÷5 °⊏
  /$"_ _" ⊜□
)

# Implement the decoding process for the Atbash cipher
# Plaintext ? Ciphertext
Decode ← |1 (
  RemoveSpaces
  ⍜▽Translate ⌵± .
)
