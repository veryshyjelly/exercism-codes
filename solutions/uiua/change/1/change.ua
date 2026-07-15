CheckExhaust ← ⍤[] ±⧻
CheckTarget  ← ⍤"target can't be negative" ≥0
LargeLength  ← ⁿ₄10
LargestArray ← ⇡LargeLength
FoundCoin    ← [⊙◌]⍤.⊸=
SmallerArray ← °□⊡<⊃∩⧻(⊟∩□)

# Change ? Coins Target
Knapsack ← |2 memo(
  CheckExhaust .
  ⊃⊢:
  ⍣(FoundCoin
  | ⊃(⍣(⊂Knapsack :⊙:⤚-⍤.◡>|LargestArray◌)
    | ⍣(Knapsack :⊙↘₁◌|LargestArray◌)
    )
    SmallerArray
  )
)

# Determine the fewest number of coins for a given target value
# Change ? Coins Target
Change ← |2 ⍣(
  []°0◌ # check for zero target
| (
    Knapsack ⇌⍆ ⊙(CheckTarget.) # check if invalid target
    ⍤"can't make target with given coins" <LargeLength⧻ .
  )
)
