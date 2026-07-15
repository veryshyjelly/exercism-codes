# Calculate the sum of multiples for a set of factors up to a limit
# Sum ? Factors Limit
SumOfMultiples ← |2 (
  ⊙⇡      # all potential numbers
  ⊸⊞(=0◿) # check divisibility by all the numbers
  ≡/↥⍉    # check if divisible by any of the numbers
  /+▽     # filters and take sum
)
