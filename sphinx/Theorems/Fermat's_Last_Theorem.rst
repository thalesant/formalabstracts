Fermat's Last Theorem
---------------------

This article gives a formal statement of Fermat's Last Theorem.  For Wikipedia's
description, see
`Fermat's Last Theorem <https://en.wikipedia.org/wiki/Fermat%27s_Last_Theorem>`_.


informally

  Fermat's Last Theorem states that 
  no three positive integers a, b, and c satisfy the equation :math:`a^n + b^n = c^n` for any integer value of n greater than 2
  

preformally

.. code-block:: text

  For all n > 2 ¬ ∃  x y z:ℕ, x^n + y^n = z^n

formally

.. code-block:: lean

  theorem Original_Fermat_last_theorem: ¬ ∃ (n > 2) x y z : ℕ, x^n + y^n = z^n :=sorry
