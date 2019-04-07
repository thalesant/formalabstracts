Fermat's two square theorem
---------------------------

This article gives a formal statement of Fermat's two square theorem.  For Wikipedia's
description, see
`Fermat's two square theorem <https://en.wikipedia.org/wiki/Fermat%27s_theorem_on_sums_of_two_squares>`_.



informally

  An odd prime p can be expressed as  :math:`p=x^{2}+y^{2}` with 
  x and y integers, if and only if :math:`p \equiv 1 (mod 4)`.

preformally

.. code-block:: text

  notations: 
  (p: integer, prime, odd) 
  theorem Fermat_two_square_theorem :=
  (modulo p 4)=1 ↔ (∃ x y : integer, p=sum (square x) (square y))


formally

.. code-block:: lean

  import data.nat.prime
  theorem Fermat_two_square_theorem (n : ℕ) :
  nat.prime n ∧ n%2=1 → (∃ x y : ℕ, n=x*x+y*y ↔ n%4=1) :=  sorry
