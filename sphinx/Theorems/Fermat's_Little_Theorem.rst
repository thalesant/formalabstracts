Fermat's Little Theorem
---------------------

This article gives a formal statement of Fermat's Little Theorem.  For Wikipedia's
description, see
`Fermat's Last Theorem <https://en.wikipedia.org/wiki/Fermat%27s_little_theorem>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  Fermat's little theorem states that if p is a prime number, then for any integer a, the number ap − a is an integer multiple of p. In the notation of modular arithmetic, this is expressed as

  :math:`{\displaystyle a^{p}\equiv a{\pmod {p}}.}`

preformally

.. code-block:: text

  ∀(a p: ℕ), prime p →  (p ∣ (a^p - a))

formally

.. code-block:: lean

  import data.nat.prime
  import data.real.basic
  open nat

  theorem Fermat_little_theorem: ∀(a p: ℕ), prime p →  (p ∣ (a^p - a)):= sorry

