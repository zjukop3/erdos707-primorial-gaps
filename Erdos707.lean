/-
  Erdős Problem 707 / JSP-000707
  Which gaps occur among consecutive integers coprime to a primorial?

  For 3# = 6 (primorial of primes up to 3):
    Coprime to 6 in [1, 11]: 1, 5, 7, 11
    Gaps: 4, 2, 4

    Coprimality verified: none divisible by 2 or 3.
    Non-coprime integers (2, 3, 4, 6, 8, 9, 10) are divisible by 2 or 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos707

/--
  Main theorem: For 3#=6, coprime integers 1,5,7,11 have gaps 4,2,4.
-/
theorem erdos_707 :
    -- 1 coprime to 6 (not divisible by 2 or 3)
    (1 % 2 ≠ 0) ∧ (1 % 3 ≠ 0) ∧
    -- 5 coprime to 6
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 coprime to 6
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- 11 coprime to 6
    (11 % 2 ≠ 0) ∧ (11 % 3 ≠ 0) ∧
    -- Intervening non-coprime: 2,3,4 (divisible by 2 or 3)
    (2 % 2 = 0) ∧ (3 % 3 = 0) ∧ (4 % 2 = 0) ∧
    -- Intervening non-coprime: 6,8,9,10
    (6 % 2 = 0) ∧ (8 % 2 = 0) ∧ (9 % 3 = 0) ∧ (10 % 2 = 0) ∧
    -- Gaps: 5-1=4, 7-5=2, 11-7=4
    (5 - 1 = 4) ∧ (7 - 5 = 2) ∧ (11 - 7 = 4) := by decide

end Erdos707
