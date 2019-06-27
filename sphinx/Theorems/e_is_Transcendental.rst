e is Transcendental
-------------------

This article gives a formal statement of e is Transcendental.  For Wikipedia's
description, see
`e is Transcendental <https://en.wikipedia.org/wiki/Lindemann%E2%80%93Weierstrass_theorem>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  e is a transcendental number.

  A transcendentalnumber is a real or complex number that is not an algebraic number, that is, not a root of a nonzero polynomial equation with integer coefficients. 


preformally

  x is_transcendental_number if :math:`\forall p` polynomial :math:`\mathbb{Z}`, x is not root of :math:`p=0`

  e is_transcendental_number

formally

.. code-block:: lean

  import data.polynomial data.finsupp data.real.basic analysis.exponential

  open polynomial
  open real
  open complex

  def is_transcendental_number(x: ℂ) := ∀ (p:polynomial ℤ) (p ≠ 0 ), ¬ is_root p x 

  theorem e_transcandental : is_transcendental_number (exp 1) := sorry  

