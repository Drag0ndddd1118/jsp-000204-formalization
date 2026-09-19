# Standalone Lean 4 Verification for JSP-000204

## Erdős Problem #227 (Clunie & Hayman 1964)

This repository contains a standalone, fully verified Lean 4 formalization of the resolution of **Erdős Problem #227** (catalogued as **JSP-000204** in the Justin Sun Prize problems).

### Mathematical Content
- **Problem**: For a transcendental entire function $f(z) = \sum a_n z^n$, must the ratio of its maximum term $\mu(r) = \max_n |a_n| r^n$ to its maximum modulus $M(r) = \max_{|z|=r} |f(z)|$ tend to $0$ as $r \to \infty$ whenever an ordinary limit exists?
- **Resolution**: Refuted by J. Clunie and W. K. Hayman (1964), exhibiting a counterexample entire function where the limiting ratio converges to $1/2$.
- **Theorem in Lean 4**: `Erdos227.not_erdos_227` (`jsp_000204`), formally proved with 0 `sorry` and 0 `admit`.

### Axioms
Verified by Lean 4 kernel with `#print axioms`:
`[propext, Classical.choice, Quot.sound]` (standard foundational axioms only).

### Build & Verify
```bash
lake update
lake exe cache get
lake build
lake env lean JSP_000204.lean
```
