Lagrange's Four Squares Theorem
-------------------------------

This article gives a formal statement of Lagrange's Four Squares Theorem.  For Wikipedia's
description, see
`Lagrange's Four Squares Theorem <https://en.wikipedia.org/wiki/Lagrange%27s_four-square_theorem>`_.


informally

    Every natural number can be represented as the sum of four integer squares.

preformally

.. code-block:: text

  notation:
  (n : ℕ)
  → ∃ a b c d : integer, n = a*a + b*b + c*c + d*d)  

formally

.. code-block:: lean

		
        theorem   Lagrange's_four_square_theorem (n :ℕ):  ∃ a b c d : ℕ, (n = a*a+b*b+c*c+d*d) :=
        begin
          admit,
        end
        
        
