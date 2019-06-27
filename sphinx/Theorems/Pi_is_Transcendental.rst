Pi is Transcendental
--------------------

This article gives a formal statement of Pi is Transcendental.  For Wikipedia's
description, see
`Pi is Transcendental <https://en.wikipedia.org/wiki/Lindemann%E2%80%93Weierstrass_theorem>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  Pi is a transcendental number.

  A transcendentalnumber is a real or complex number that is not an algebraic number, that is, not a root of a nonzero polynomial equation with integer coefficients. 

preformally

  x is_transcendental_number if :math:`\forall p` polynomial :math:`\mathbb{Z}`, x is not root of :math:`p=0`

  pi is_transcendental_number

formally

.. code-block:: lean

  import data.polynomial data.finsupp data.real.basic analysis.exponential

  open polynomial
  open real
  open complex

  def is_transcendental_number(x: ℂ) := ∀ (p:polynomial ℤ) (p ≠ 0 ), ¬ is_root p x 

  theorem pi_transcandental : is_transcendental_number (pi) := sorry 
