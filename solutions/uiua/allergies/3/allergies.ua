Allergens ← {
  "eggs"
  "peanuts"
  "shellfish"
  "strawberries"
  "tomatoes"
  "chocolate"
  "pollen"
  "cats"
}

# List the allergens
# Boolean ? Score Allergen
IsAllergicTo ← |2 ∊ ▽ : Allergens ⊓⋯₈□

# List the allergens
# Allergens ? Score
List ← |1 ▽ : Allergens ⋯₈
