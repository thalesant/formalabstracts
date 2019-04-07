Greatest Common Divisor Algorithm
---------------------------------

This article gives a formal statement of Greatest Common Divisor Algorithm.  For Wikipedia's
description, see
`Greatest Common Divisor Algorithm <https://en.wikipedia.org/wiki/Euclidean_algorithm>`_.


informally

  --The greatest common divisor of two numbers could be computed by the Euclid algorithm.

preformally

.. code-block:: text
  
  notations:
  (p, q: integer)
  theorem greatest_common_divisor_algorithm_theorem := greatest_common_divisor p q = Euclid_algorithm p q


formally

.. code-block:: lean

  def be_gcd (m p q : ℕ) : Prop :=  m∣ p ∧ m∣ q ∧ (∀ n:ℕ, n>m → ((n∣ p ∧ n∣ q) → ff)) 
  def gcd_ordered : ℕ → ℕ →  ℕ 
  |p q:= if (q∣ p) then q else have q<p, from sorry, 
        gcd_ordered q (p%q) 
  def gcd ( p q : ℕ ): ℕ := if p>q then gcd_ordered p q else gcd_ordered q p
  theorem greatest_common_divisor_algorithm_theorem (p q: ℕ ):
  be_gcd (gcd p q) p q := sorry
