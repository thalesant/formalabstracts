Fundamental Theorem of Algebra
------------------------------


This article gives a formal statement of Fundamental Theorem of Algebra.  For Wikipedia's
description, see
`Fundamental Theorem of Algebra <https://en.wikipedia.org/wiki/Fundamental_theorem_of_algebra>`_.

informally

  The fundamental theorem of algebra states that every non-constant single-variable polynomial with complex coefficients has at least one complex root. This includes polynomials with real coefficients, since every real number is a complex number with an imaginary part equal to zero.

preformally
  :math:`\forall p(X)` single-variable polynomial in :math:`\mathbb{C}, \exists z \in \mathbb{C}` such that :math:`p(z) = 0` 

formally

.. code-block:: lean

  import data.polynomial data.complex.basic data.real.basic

  open complex real polynomial

  theorem fundamental_theorem_of_algebra: ∀(p: polynomial ℂ) (H:degree p ≥ 1), ∃ (z: ℂ), is_root p z := sorry

