Fermat's Last Theorem
---------------------

This article gives a formal statement of Fermat's Last Theorem.  For Wikipedia's
description, see
`Fermat's Last Theorem <https://en.wikipedia.org/wiki/Fermat%27s_Last_Theorem>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  Original statement. With n, x, y, z ∈ N (meaning n, x, y, z are all positive whole numbers) and n > 2 the equation :math:`x^n + y^n = z^n` has no solutions.
  Most popular treatments of the subject state it this way. In contrast, almost all mathematics textbooks state it over Z:

preformally

.. code-block:: text

  ¬ ∃ (n > 2) x y z:ℕ, x^n + y^n = z^n

formally

.. code-block:: lean

  theorem Original_Fermat_last_theorem: ¬ ∃ (n > 2) x y z:ℕ, x^n + y^n = z^n :=sorry
