IsPalindrome  ← ≍⇌.°⋕
ValidateRange ← ⍤"invalid range" ≥

# Find the smallest palindrome product of two numbers in a range
# PalindromeProducts ? Min Max
Smallest ← |2 (
  ◡ValidateRange
  ⊙+₁
  ⍜(-|⇡)
  ◴↯∞_3 ⊞[⊃(×|↧|↥)].
  ▽⊸≡(IsPalindrome⊢)
  ⍆
  ⊸≡⊢
  ⊜□
  ⍣(°□⊢|↯0_3[])
)

# Find the largest palindrome product of two numbers in a range
# PalindromeProducts ? Min Max
Largest ← |2 (
  ◡ValidateRange
  ⊙+₁
  ⍜(-|⇡)
  ◴↯∞_3 ⊞[⊃(×|↧|↥)].
  ▽⊸≡(IsPalindrome⊢)
  ⍆
  ⊸≡⊢
  ⊜□
  ⍣(°□⊣|↯0_3[])
)
