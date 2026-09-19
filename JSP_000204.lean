import ErdosProblems.Erdos227

open Erdos227

/--
JSP-000204: For a transcendental entire function, determine the limiting ratio
between its largest power-series term and its maximum modulus on a circle.
Erdős Problem #227 (Clunie & Hayman 1964).

This standalone Lean 4 verification certifies the refutation of Erdős's conjecture,
proving that the limiting ratio between the maximum term and the maximum modulus
need not vanish for a transcendental entire function.
-/
theorem jsp_000204 :
    ¬ (∀ (a : ℕ → ℂ) (f : ℂ → ℂ) (L : ℝ),
      IsEntirePowerSeries a f →
      IsTranscendentalSeries a →
      Filter.Tendsto (fun r : ℝ ↦ maximumTerm a r / maximumModulus f r) Filter.atTop (nhds L) →
      L = 0) :=
  not_erdos_227

#print axioms jsp_000204
