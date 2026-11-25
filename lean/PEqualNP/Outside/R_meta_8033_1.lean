import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8033_1
    (h1 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
  PEqualNP.MetaComplexity.FanInTwo x1 →
    (∀ (x3 : Fin 9 → Bool),
        x1.eval (List.ofFn x3) =
          [(0, 1), (1, 2), (2, 3), (3, 4), (4, 0), (0, 5), (1, 6), (2, 7), (3, 8), (5, 7), (6, 8), (8, 5)].any fun x4 =>
            x3 x4.1 && x3 x4.2) →
      15 ≤ x1.size)
    (h2 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
  PEqualNP.MetaComplexity.FanInTwo x1 →
    (∀ (x3 : Fin 9 → Bool),
        x1.eval (List.ofFn x3) =
          [(0, 1), (1, 2), (2, 3), (3, 4), (4, 0), (0, 5), (1, 6), (2, 7), (3, 8), (5, 7), (6, 8), (8, 5)].any fun x4 =>
            x3 x4.1 && x3 x4.2) →
      13 + PEqualNP.NotBracket.notCount x1 ≤ x1.size) :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 → (∀ (x3 : Fin (9 : ℕ) → Bool), x1.eval (List.ofFn x3) = [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any fun (x4 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x3 x4.1 && x3 x4.2) → (15 : ℕ) ≤ x1.size ∧ (13 : ℕ) + PEqualNP.NotBracket.notCount x1 ≤ x1.size := by
  intro v1 v2 v3
  exact And.intro (h1 v1 v2 v3) (h2 v1 v2 v3)
