IsPalindrome  ← ≍⇌.°⋕
ValidateRange ← ⍤"invalid range" ≥

PalindromeProducts! ← (
  ◡ValidateRange
  ⍜(-|⇡+₁)
  ⧅≤2
  ≡/× .
  ≡⊂∩▽⟜:≡IsPalindrome.
  ⊜□⊸≡⊢ ⍆
  ⍣(°□^|↯0_3[])
)

# Find the smallest palindrome product of two numbers in a range
# PalindromeProducts ? Min Max
Smallest ← |2 PalindromeProducts!⊢

# Find the largest palindrome product of two numbers in a range
# PalindromeProducts ? Min Max
Largest ← |2 PalindromeProducts!⊣
