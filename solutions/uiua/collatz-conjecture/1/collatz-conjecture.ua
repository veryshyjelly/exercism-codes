Validate ← ⍤ "only positive integers are allowed" > 0
# Calculate the number of steps of a number using the Collatz Conjecture
# NumberOfSteps ? Number
Steps ← |1 ⧻ ⍢(.⨬(÷2|+1×3)⊸◿2|≠1) Validate .
