IsDigit  ← ×⊃(≥@0|≤@9)
IsNumber ← ±+1⍣(⋕|¯1)

# Encode a string using run-length encoding
# Ciphertext ? Plaintext
Encode ← |1 (
  +1⊸⊛
  ⊜(□⍣($"_"°1|$"__") ⊃(⧻|⊢))
  /$"__"
)

# Decode a string encoded with run-length encoding
# Plaintext ? Ciphertext
Decode ← |1 (
  ⊸⊃(¬IsDigit)⊛
  ⊜□ +1×
  ...
  ▽≡IsNumber
  -∩⧻
  ⍥(:⍣(□▽⊙(°□°⊂)⋕|∘) °⊂)
  /$"__"
)
