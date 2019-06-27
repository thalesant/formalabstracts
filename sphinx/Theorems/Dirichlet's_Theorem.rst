Dirichlet's Theorem
-------------------

This article gives a formal statement of Dirichlet's Theorem.  For Wikipedia's
description, see
`Dirichlet's Theorem <https://en.wikipedia.org/wiki/Dirichlet%27s_theorem_on_arithmetic_progressions>`_.


informally

  For any two positive coprime integers a and d, there are infinitely many primes that are congruent to a modulo d.

preformally

.. code-block:: text

  notation: 
  (a: integer, positive)
  (d: integer, positive)
  (S: set of {p: integer, prime, (exist n:integer, positive, p=n*a+d)}) 
  theorem Dirichlet_theorem coprime a d → infinite S
   

formally

.. code-block:: lean

  import data.nat.prime
  def setOfCongruentModuloPrimes (a d: ℕ) := {p:ℕ| nat.prime p ∧ ∃ n:ℕ, n>0 ∧ p=n*a+d}
  def infinite (s: set ℕ): Prop := ∀ n : ℕ, ∃ m ∈ s, n <m 
  theorem Dirichlet_theorem (a d: ℕ) : nat.coprime a d ∧ a>0 ∧ d>0  → infinite (setOfCongruentModuloPrimes a d) := sorry  
