import Mathlib

namespace JSP000909

/-- Literal reading of the JSP-000909 catalog wording: there is some function
of the two binomial parameters that uniformly bounds the least prime factor. -/
def HasTwoParameterLeastPrimeFactorBound : Prop :=
  ∃ F : ℕ → ℕ → ℕ,
    ∀ n k : ℕ, k ≤ n → (Nat.choose n k).minFac ≤ F n k

/-- The literal catalog statement is immediate by taking the bound function to
be the binomial coefficient itself. This is not the stronger Erdős #1094
finite-exception conjecture. -/
theorem jsp_000909_literal : HasTwoParameterLeastPrimeFactorBound := by
  refine ⟨fun n k => Nat.choose n k, ?_⟩
  intro n k hk
  exact Nat.minFac_le (Nat.choose_pos hk)

#print axioms jsp_000909_literal

end JSP000909
