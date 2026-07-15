# Calculate the sum of multiples for a set of factors up to a limit
# Sum ? Factors Limit
SumOfMultiples ← |2 (
  ⊙⊸⇡  # get range
  ⊞×   # multiples 
  ◴♭   # deshapdedup
  ▽⊸<: # keep less than
  /+
)
