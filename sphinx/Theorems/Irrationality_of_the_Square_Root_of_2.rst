Irrationality of the Square Root of 2
-------------------------------------

This article gives the formal statement of the irrationality of the
Square Root of 2.  For Wikipedia's description, see `Square root of 2
<https://en.wikipedia.org/wiki/Square_root_of_2>`_.

informal

  The square root of 2 is irrational.

preformal
  theorem: if :math:`p` prime then sqrt :math:`p \notin \mathbb{Q}`

  corollary: sqrt 2 :math:`\notin \mathbb{Q}`

formally

.. code-block:: lean

  import data.real.irrational data.real.basic data.nat.prime

  open nat real irrational

  theorem sqrt_prime_irrational {p: ℕ}: prime p → irrational (sqrt(p:ℝ)) := sorry

  lemma sqrt_2_irrational: irrational (sqrt(2: ℝ )):= sorry

  

