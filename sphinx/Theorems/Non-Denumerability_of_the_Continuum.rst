Non-Denumerability of the Continuum
-----------------------------------

This article gives a formal statement of Non-Denumerability of the Continuum.  For Wikipedia's
description, see
`Non-Denumerability of the Continuum <https://en.wikipedia.org/wiki/Cardinality_of_the_continuum>`_.


informally

  In set theory, the cardinality of the continuum is the cardinality or "size" of the set of real numbers :math:`{\displaystyle \mathbb {R} } \mathbb {R}` , sometimes called the continuum. It is an infinite cardinal number 

preformally
 Theorem: There doesn't exist surjective function f: ℕ → ℝ.

formally

.. code-block:: lean

  import data.real.ennreal

  open function
  theorem Non_Denumerability_of_the_Continuum :
  ¬ ∃ f: ℕ → ℝ ,  surjective f:= sorry 
