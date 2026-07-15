# Encode plaintext using the Caesar Cipher
# Ciphertext ? Key Plaintext
Encode ← |2 ⍜(-@a|◿26) + ↯ [∘] : ⊓(-@a)(⊸⧻)

# Decode plaintext using the Caesar Cipher
# Plaintext ? Key Ciphertext
Decode ← |2 ⍜(-@a|◿26) - ↯ [∘] : ⊓(-@a)(⊸⧻)

# Generate a random key for the Caesar Cipher
# Key
RandomKey ← |0 +@a⍥⚂₂₆100
