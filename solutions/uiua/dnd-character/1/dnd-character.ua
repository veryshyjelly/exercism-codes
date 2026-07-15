# Calculate the modifier of an Ability score
# ModifierValue ? Score
Modifier ← |1 ⌊÷2-10

# Generate a random Ability score
# Score ? 
Ability ← |0 (/+↙3⇌⍆+1⍥⚂₆4)

# Generate a random character
# Character ? 
Character ← |0 ⍥Ability 6

# Retrieve the Strength score of a Character
# AbilityValue ? Character
Strength ← |1 ⊡₀

# Retrieve the Dexterity score of a Character
# AbilityValue ? Character
Dexterity ← |1 ⊡₁

# Retrieve the Constitution score of a Character
# AbilityValue ? Character
Constitution ← |1 ⊡₂

# Retrieve the Intelligence score of a Character
# AbilityValue ? Character
Intelligence ← |1 ⊡₃

# Retrieve the Wisdom score of a Character
# AbilityValue ? Character
Wisdom ← |1 ⊡₄

# Retrieve the Charisma score of a Character
# AbilityValue ? Character
Charisma ← |1 ⊡₅

# Retrieve the Hitpoints score of a Character
# AbilityValue ? Character
Hitpoints ← |1 +10 Modifier Constitution
