import ErdosProblems.Erdos227

namespace JSP000204

open Erdos227

/--
Formal statement for JSP-000204 (Erdős Problem #227):
For a transcendental entire function, determine the limiting ratio between its largest
power-series term and its maximum modulus on a circle.

Resolved negatively by J. Clunie and W. K. Hayman (1964):
Refutes Erdős's conjecture by showing that the limiting ratio between the maximum term
and the maximum modulus need not vanish for a transcendental entire function.
-/
def jsp000204Statement : Prop :=
  ¬ (∀ (a : ℕ → ℂ) (f : ℂ → ℂ) (L : ℝ),
    IsEntirePowerSeries a f →
    IsTranscendentalSeries a →
    Filter.Tendsto (fun r : ℝ ↦ maximumTerm a r / maximumModulus f r) Filter.atTop (nhds L) →
    L = 0)

end JSP000204
