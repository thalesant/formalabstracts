Green-Tao theorem
-----------------

This article gives a formal statement of the Green-Tao theorem.  For Wikipedia's
description, see
`Green-Tao theorem <https://en.wikipedia.org/wiki/Green%E2%80%93Tao_theorem>`_.

Informal statement

    For every natural number k, there exist arithmetic progressions of primes with k terms.
  
preformally

    Notations: k:ℕ, k>0
    Theorem: For all k:ℕ, k>0, there exist a, d: ℕ,(d>0) such that a, a+d,..., a+(k-1)d are prime numbers.    
    
formally

.. code-block:: lean

  import data.nat.prime
  open nat
  theorem Green_Tao_Theorem :
  ∀ k:ℕ, (k>0) → (∃ a: ℕ, ∃ d: ℕ,(d>0) ∧ (∀ m:ℕ, (m<k)→ (prime (a+m*d))))  
    := sorry
