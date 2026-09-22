# JSP-000909 Lean formalization

This repository formalizes a literal reading of the published Justin Sun Prize catalog entry JSP-000909:

> Can the least prime factor of a binomial coefficient be bounded by a uniform function of its two parameters?

Under the ordinary literal reading that the requested bound may be an arbitrary function of the two parameters `(n, k)`, the answer is immediate: take

`F n k = Nat.choose n k`.

For `k ≤ n`, the binomial coefficient is positive, and `Nat.minFac_le` gives

`(Nat.choose n k).minFac ≤ Nat.choose n k = F n k`.

## Scope

This repository **does not claim to solve Erdős problem #1094**. The source problem is substantially stronger: for `n ≥ 2k`, it asks whether

`(Nat.choose n k).minFac ≤ max (n / k) k`

has only finitely many exceptions. That problem remains open in the cited source/formal-conjecture record.

The purpose of this repository is to give a complete, kernel-checkable proof of the weaker statement printed in the JSP catalog, for review under the Prize's public incorrect-framing rule.

## Main theorem

`JSP000909.jsp_000909_literal`

## Build

```bash
lake exe cache get
lake build
```

The Lean toolchain and Mathlib revision are pinned in this repository. The source also runs `#print axioms JSP000909.jsp_000909_literal` as an axiom audit.
