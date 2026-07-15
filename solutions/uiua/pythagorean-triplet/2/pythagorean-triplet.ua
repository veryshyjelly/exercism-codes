# Find the Pythagorean triplet for a given sum
# Triplets ? Sum
TripletsWithSum ← |1 (
  ↘₁⊸⇡                    # [1..<n]
  ↯∞_2 ⊞⊟.                # club every two numbers to get list of pairs
  ◴▽≡(⊃(=⌊.|⍆⊂) √/+ ⁿ2 .) # for each row compute third side and check if it is integer
  ▽⤚≡(=∘/+)               # check if sum of sides is equal to n
)
