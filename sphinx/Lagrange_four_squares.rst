Lagrange's four-square theorem
==============================

Introduction
------------
The `Lagrange's four-square theorem <https://en.wikipedia.org/wiki/Lagrange%27s_four-square_theorem>`_ states 
that every natural number can be represented as the sum of four integer squares.


Formal statement
----------------

.. code-block:: lean

		
        theorem theorem_Lagrange_four_squares (n : ℕ) :
        ∃ a b c d : ℕ,  n = a*a + b*b + c*c + d*d :=
        sorry
        