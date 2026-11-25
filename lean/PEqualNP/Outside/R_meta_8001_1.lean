import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8001_1
    (h1 : ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) (x4 : Bool),
  PEqualNP.MetaComplexity.FanInTwo x2 →
    x2.size ≤ 15 →
      (∀ (x7 : Fin 9 → Bool),
          have x8 := (x2.wires (List.ofFn x7 ++ [false])).getD x3 false;
          (if x4 = true then !x8 else x8) =
            (fun x1 =>
                x1 0 && x1 1 || x1 1 && x1 2 || x1 2 && x1 3 || x1 3 && x1 4 || x1 4 && x1 0 || x1 0 && x1 5 ||
                            x1 1 && x1 6 ||
                          x1 2 && x1 7 ||
                        x1 3 && x1 8 ||
                      x1 5 && x1 7 ||
                    x1 6 && x1 8 ||
                  x1 8 && x1 5)
              x7) →
        x4 = false)
    (h2 : ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) (x4 : Bool),
  PEqualNP.MetaComplexity.FanInTwo x2 →
    x2.size ≤ 15 →
      (∀ (x7 : Fin 9 → Bool),
          have x8 := (x2.wires (List.ofFn x7 ++ [false])).getD x3 false;
          (if x4 = true then !x8 else x8) =
            (fun x1 =>
                x1 0 && x1 1 || x1 1 && x1 2 || x1 2 && x1 3 || x1 3 && x1 4 || x1 4 && x1 0 || x1 0 && x1 5 ||
                            x1 1 && x1 6 ||
                          x1 2 && x1 7 ||
                        x1 3 && x1 8 ||
                      x1 5 && x1 7 ||
                    x1 6 && x1 8 ||
                  x1 8 && x1 5)
              x7) →
        ∃ x8,
          PEqualNP.MetaComplexity.FanInTwo x8 ∧
            x8.size = 15 ∧
              List.countP (fun x9 => x9.op.eval [false]) x8.gates ≤ 1 ∧
                PEqualNP.MetaComplexity.circuitFun 9 x8 = fun x1 =>
                  x1 0 && x1 1 || x1 1 && x1 2 || x1 2 && x1 3 || x1 3 && x1 4 || x1 4 && x1 0 || x1 0 && x1 5 ||
                              x1 1 && x1 6 ||
                            x1 2 && x1 7 ||
                          x1 3 && x1 8 ||
                        x1 5 && x1 7 ||
                      x1 6 && x1 8 ||
                    x1 8 && x1 5) :
    have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => x1 (0 : Fin (9 : ℕ)) && x1 (1 : Fin (9 : ℕ)) || x1 (1 : Fin (9 : ℕ)) && x1 (2 : Fin (9 : ℕ)) || x1 (2 : Fin (9 : ℕ)) && x1 (3 : Fin (9 : ℕ)) || x1 (3 : Fin (9 : ℕ)) && x1 (4 : Fin (9 : ℕ)) || x1 (4 : Fin (9 : ℕ)) && x1 (0 : Fin (9 : ℕ)) || x1 (0 : Fin (9 : ℕ)) && x1 (5 : Fin (9 : ℕ)) || x1 (1 : Fin (9 : ℕ)) && x1 (6 : Fin (9 : ℕ)) || x1 (2 : Fin (9 : ℕ)) && x1 (7 : Fin (9 : ℕ)) || x1 (3 : Fin (9 : ℕ)) && x1 (8 : Fin (9 : ℕ)) || x1 (5 : Fin (9 : ℕ)) && x1 (7 : Fin (9 : ℕ)) || x1 (6 : Fin (9 : ℕ)) && x1 (8 : Fin (9 : ℕ)) || x1 (8 : Fin (9 : ℕ)) && x1 (5 : Fin (9 : ℕ)); ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) (x4 : Bool), PEqualNP.MetaComplexity.FanInTwo x2 → x2.size ≤ (15 : ℕ) → (∀ (x7 : Fin (9 : ℕ) → Bool), have x8 : Bool := (x2.wires (List.ofFn x7 ++ [Bool.false])).getD x3 Bool.false; (if x4 = Bool.true then !x8 else x8) = x1 x7) → x4 = Bool.false ∧ ∃ (x8 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x8 ∧ x8.size = (15 : ℕ) ∧ List.countP (fun (x9 : PEqualNP.CircuitLowerBounds.Gate) => x9.op.eval [Bool.false]) x8.gates ≤ (1 : ℕ) ∧ PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x8 = x1 := by
  dsimp only
  intro v1 v2 v3 v4 v5 v6
  exact And.intro (h1 v1 v2 v3 v4 v5 v6) (h2 v1 v2 v3 v4 v5 v6)
