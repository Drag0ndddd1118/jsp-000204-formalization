# Formalization of JSP-000204 (Erdős Problem #227)

## Problem Overview

**Catalog ID:** [JSP-000204](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0201-0300.md#JSP-000204)  
**Erdős Problem:** [#227](https://www.erdosproblems.com/227)  
**Mathematical Area:** Complex Analysis / Entire Functions  

### Problem Statement

For a transcendental entire function, determine the limiting ratio between its largest power-series term and its maximum modulus on a circle.

### Resolution

Resolved negatively by J. Clunie and W. K. Hayman (1964), disproving Erdős's conjecture: the limiting ratio between the maximum term and the maximum modulus need not vanish for a transcendental entire function.

## Formalization Details

- **Contract Statement:** `Challenge.lean` defines `JSP000204.jsp000204Statement`
- **Solution Theorem:** `Submission.lean` proves `JSP000204.jsp_000204_solved : jsp000204Statement`
- **Underlying Formalization:** `ErdosProblems/Erdos227.lean` provides complete, fully closed proofs.
- **Axioms Check:**
  `#print axioms JSP000204.jsp_000204_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

```bash
lake exe cache get
lake build
python3 check.py
```
