Leap        ← |1 ⍣(=0◿400 °0◿100 .|=0◿4)
RandomYear  ← (⊢ ▽¬Leap . ⌊×3000 ⍥⚂100)
RandomMonth ← (⌊+1×12 ⚂)
RandomDate  ← (⌊+1×31 ⚂)

RandomBDay ← ([RandomYear RandomMonth RandomDate])

# Check if an array of birthdates contains a shared birthday
# HasSharedBirthday ? Birthdates
SharedBirthday ← |1 ≠ ∩⧻ ⊸◴ ≡↘₁

# Generate random birthdates
# Birthdates ? Count
RandomBirthdates ← |1 ⍥RandomBDay

# Calculate the estimated probability of a shared birthday
# Probability ? NumberOfBirthdays
EstimatedProbabilityOfSharedBirthday ← |1 (
  ⇡
  ÷⟜˜-365
  -:1/×
  ×100
)
