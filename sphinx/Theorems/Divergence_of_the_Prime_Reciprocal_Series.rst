Divergence of the Prime Reciprocal Series
-----------------------------------------

This article gives a formal statement of Divergence of the Prime Reciprocal Series.  For Wikipedia's
description, see
`Divergence of the Prime Reciprocal Series <https://en.wikipedia.org/wiki/Divergence_of_the_sum_of_the_reciprocals_of_the_primes>`_.


Informally
----------------------------

The sum of the reciprocals of all prime numbers diverges; that is:

.. math::
  {\displaystyle \sum _{p{\text{ prime}}}{\frac {1}{p}}={\frac {1}{2}}+{\frac {1}{3}}+{\frac {1}{5}}+{\frac {1}{7}}+{\frac {1}{11}}+\cdots =\infty }

Preformally
----------------------------
.. code-block:: text

 p: prime
 set_prime := { p | nat.prime p}
 Theorem Diver_sum_recip_prime: ¬ has_sum (λ p: set_prime, 1/p))

Formally
-------------------------------
.. code-block:: lean

  import data.real.ennreal data.nat.prime topology.algebra.infinite_sum noncomputable theory

  def set_prime : set ℕ := { p | nat.prime p}

  theorem Diver_sum_recip_prime[topological_add_monoid ℝ] : ¬ has_sum (λ p: set_prime, 1/(p:ℝ)):= sorry

