import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7862_1
    (h1 : ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit),
  PEqualNP.TopForm.NoFourCycle x2 →
    (∃ x6 x7, x2.Adj x6 x7) →
      PEqualNP.TopForm.IsLeastAO x2 x4 →
        PEqualNP.TopForm.TopForm x2 x4 →
          x2.edgeSet.ncard + (PEqualNP.TopForm.tops x2 x4 \ PEqualNP.TopForm.centreless x2 x4).card +
                  2 * (PEqualNP.TopForm.centreless x2 x4).card +
                (PEqualNP.TopForm.junk x2 x4).card +
              (PEqualNP.TopForm.orN x2 x4 \ PEqualNP.TopForm.lam x2 x4).card ≤
            x4.size + (PEqualNP.TopForm.Ustar x2 x4).card + 1)
    (h2 : ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit),
  PEqualNP.TopForm.NoFourCycle x2 →
    (∃ x6 x7, x2.Adj x6 x7) →
      PEqualNP.TopForm.IsLeastAO x2 x4 →
        PEqualNP.TopForm.TopForm x2 x4 →
          ∀ (x9 : Finset (Fin x1)),
            PEqualNP.MetaComplexity.NestedCover.IsMinCover (x2.deleteEdges ↑(PEqualNP.TopForm.Ustar x2 x4)) x9 →
              x9.card ≤ (PEqualNP.TopForm.tops x2 x4 \ PEqualNP.TopForm.centreless x2 x4).card) :
    ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.TopForm.NoFourCycle x2 → (∃ (x6 : Fin x1) (x7 : Fin x1), x2.Adj x6 x7) → PEqualNP.TopForm.IsLeastAO x2 x4 → PEqualNP.TopForm.TopForm x2 x4 → x2.edgeSet.ncard + (PEqualNP.TopForm.tops x2 x4 \ PEqualNP.TopForm.centreless x2 x4).card + (2 : ℕ) * (PEqualNP.TopForm.centreless x2 x4).card + (PEqualNP.TopForm.junk x2 x4).card + (PEqualNP.TopForm.orN x2 x4 \ PEqualNP.TopForm.lam x2 x4).card ≤ x4.size + (PEqualNP.TopForm.Ustar x2 x4).card + (1 : ℕ) ∧ ∀ (x9 : Finset (Fin x1)), PEqualNP.MetaComplexity.NestedCover.IsMinCover (x2.deleteEdges ↑(PEqualNP.TopForm.Ustar x2 x4)) x9 → x9.card ≤ (PEqualNP.TopForm.tops x2 x4 \ PEqualNP.TopForm.centreless x2 x4).card := by
  intro v1 v2 v3 v4 v5 v6 v7 v8
  exact And.intro (h1 v1 v2 v4 v5 v6 v7 v8) (h2 v1 v2 v4 v5 v6 v7 v8)
