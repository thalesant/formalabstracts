Lagrange's Four Squares Theorem
-------------------------------

This article gives a formal statement of Lagrange's Four Squares Theorem.  For Wikipedia's
description, see
`Lagrange's Four Squares Theorem <https://en.wikipedia.org/wiki/Lagrange%27s_four-square_theorem>`_.


informally

    Every natural number can be represented as the sum of four integer squares.

preformally

.. code-block:: text

  
    theorem theorem_Lagrange_four_squares :=  ∀ (n: natural number) 
    → ∃ (a b c d : interger), n = sum of squares of a, b, c, d.  

formally

.. code-block:: lean

		
        theorem theorem_Lagrange_four_squares (n : ℕ) :
        ∀ (n: ℕ), ∃ a b c d : ℕ,  n = a*a + b*b + c*c + d*d :=
        sorry
