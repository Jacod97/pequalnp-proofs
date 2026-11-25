import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_5966_1
    (h1 : ∀ (x1 : SimpleGraph (Fin 11)) [x2 : DecidableRel x1.Adj] (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 x5 : ℕ),
  x1 =
      PEqualNP.EdgeOwnership.edgeGraph 11
        [(0, 9), (0, 10), (1, 4), (1, 8), (2, 5), (2, 10), (3, 6), (3, 7), (4, 8), (4, 10), (5, 8), (5, 9), (6, 7),
          (6, 10), (7, 9), (8, 9)] →
    PEqualNP.TopForm.IsAO2 11 x3 →
      PEqualNP.TopForm.TopForm x1 x3 →
        PEqualNP.TopForm.junk x1 x3 = {x4, x5} →
          ¬PEqualNP.EdgeOwnership.InCone 11 x3 x4 x5 →
            ¬PEqualNP.EdgeOwnership.InCone 11 x3 x5 x4 →
              (∃ x12 ∈ PEqualNP.TopForm.tops x1 x3,
                  PEqualNP.EdgeOwnership.InCone 11 x3 x4 x12 ∧ PEqualNP.EdgeOwnership.InCone 11 x3 x5 x12) →
                ((fun x13 =>
                        {x14 ∈ PEqualNP.TopForm.gammaE x1 x3 x13 | ∃ x15 ∈ PEqualNP.TopForm.wmax x1 x3 x13, x15 ∈ x14})
                      x4).card ≤
                  7)
    (h2 : ∀ (x1 : SimpleGraph (Fin 11)) [x2 : DecidableRel x1.Adj] (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 x5 : ℕ),
  x1 =
      PEqualNP.EdgeOwnership.edgeGraph 11
        [(0, 9), (0, 10), (1, 4), (1, 8), (2, 5), (2, 10), (3, 6), (3, 7), (4, 8), (4, 10), (5, 8), (5, 9), (6, 7),
          (6, 10), (7, 9), (8, 9)] →
    PEqualNP.TopForm.IsAO2 11 x3 →
      PEqualNP.TopForm.TopForm x1 x3 →
        PEqualNP.TopForm.junk x1 x3 = {x4, x5} →
          ¬PEqualNP.EdgeOwnership.InCone 11 x3 x4 x5 →
            ¬PEqualNP.EdgeOwnership.InCone 11 x3 x5 x4 →
              (∃ x12 ∈ PEqualNP.TopForm.tops x1 x3,
                  PEqualNP.EdgeOwnership.InCone 11 x3 x4 x12 ∧ PEqualNP.EdgeOwnership.InCone 11 x3 x5 x12) →
                ((fun x13 =>
                          {x14 ∈ PEqualNP.TopForm.gammaE x1 x3 x13 |
                            ∃ x15 ∈ PEqualNP.TopForm.wmax x1 x3 x13, x15 ∈ x14})
                        x5).card ≤
                    7 ∧
                  ((∀ (x15 : Fin 11 → Bool),
                        PEqualNP.EdgeOwnership.gateVal 11 x3 x4 x15 = true →
                          PEqualNP.EdgeOwnership.gateVal 11 x3 x5 x15 = true →
                            PEqualNP.MetaComplexity.NestedCover.graphFun x1 ∅ x15 = true) →
                      (PEqualNP.TopForm.gammaE x1 x3 x4 ∩ PEqualNP.TopForm.gammaE x1 x3 x5).card ≤ 8) ∧
                    ((∀ (x15 : Fin 11 → Bool),
                        PEqualNP.EdgeOwnership.gateVal 11 x3 x4 x15 = true →
                          PEqualNP.EdgeOwnership.gateVal 11 x3 x5 x15 = true →
                            PEqualNP.MetaComplexity.NestedCover.graphFun x1 ∅ x15 = true) ∨
                      (PEqualNP.TopForm.wmax x1 x3 x4 ∩ PEqualNP.TopForm.wmax x1 x3 x5).Nonempty)) :
    ∀ (x1 : SimpleGraph (Fin (11 : ℕ))) [x2 : DecidableRel x1.Adj] (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 x5 : ℕ), x1 = PEqualNP.EdgeOwnership.edgeGraph (11 : ℕ) [((0 : ℕ), (9 : ℕ)), ((0 : ℕ), (10 : ℕ)), ((1 : ℕ), (4 : ℕ)), ((1 : ℕ), (8 : ℕ)), ((2 : ℕ), (5 : ℕ)), ((2 : ℕ), (10 : ℕ)), ((3 : ℕ), (6 : ℕ)), ((3 : ℕ), (7 : ℕ)), ((4 : ℕ), (8 : ℕ)), ((4 : ℕ), (10 : ℕ)), ((5 : ℕ), (8 : ℕ)), ((5 : ℕ), (9 : ℕ)), ((6 : ℕ), (7 : ℕ)), ((6 : ℕ), (10 : ℕ)), ((7 : ℕ), (9 : ℕ)), ((8 : ℕ), (9 : ℕ))] → PEqualNP.TopForm.IsAO2 (11 : ℕ) x3 → PEqualNP.TopForm.TopForm x1 x3 → PEqualNP.TopForm.junk x1 x3 = {x4, x5} → ¬PEqualNP.EdgeOwnership.InCone (11 : ℕ) x3 x4 x5 → ¬PEqualNP.EdgeOwnership.InCone (11 : ℕ) x3 x5 x4 → (∃ x12 ∈ PEqualNP.TopForm.tops x1 x3, PEqualNP.EdgeOwnership.InCone (11 : ℕ) x3 x4 x12 ∧ PEqualNP.EdgeOwnership.InCone (11 : ℕ) x3 x5 x12) → have x13 : ℕ → Finset (Sym2 (Fin (11 : ℕ))) := fun (x13 : ℕ) => {x14 ∈ PEqualNP.TopForm.gammaE x1 x3 x13 | ∃ x15 ∈ PEqualNP.TopForm.wmax x1 x3 x13, x15 ∈ x14}; have x14 : Finset (Sym2 (Fin (11 : ℕ))) := PEqualNP.TopForm.gammaE x1 x3 x4 ∩ PEqualNP.TopForm.gammaE x1 x3 x5; have x15 : Prop := ∀ (x15 : Fin (11 : ℕ) → Bool), PEqualNP.EdgeOwnership.gateVal (11 : ℕ) x3 x4 x15 = Bool.true → PEqualNP.EdgeOwnership.gateVal (11 : ℕ) x3 x5 x15 = Bool.true → PEqualNP.MetaComplexity.NestedCover.graphFun x1 ∅ x15 = Bool.true; (x13 x4).card ≤ (7 : ℕ) ∧ (x13 x5).card ≤ (7 : ℕ) ∧ (x15 → x14.card ≤ (8 : ℕ)) ∧ (x15 ∨ (PEqualNP.TopForm.wmax x1 x3 x4 ∩ PEqualNP.TopForm.wmax x1 x3 x5).Nonempty) := by
  dsimp only
  intro v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  exact And.intro (h1 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12) (h2 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12)
