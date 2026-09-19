import Lake
open Lake DSL

package "jsp-000204-formalization" where
  version := "0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

@[default_target]
lean_lib «ErdosProblems» where
  roots := #[`ErdosProblems.Erdos227]
