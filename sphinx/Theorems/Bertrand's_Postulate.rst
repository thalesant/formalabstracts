Bertrand's Postulate
--------------------


This article gives a formal statement of Bertrand's Postulate.  For Wikipedia's
description, see
`Bertrand's Postulate <https://en.wikipedia.org/wiki/Bertrand%27s_postulate>`_.


informally

    For any integer :math:`n>3` there always exists at least 
    one prime number :math:`p` with :math:`n<p<2n-2`.

preformally

.. code-block:: text

  notations: 
  X: integer, greater than 3
  Y: prime, X<Y<2X-2
  theorem postulateBertrand := X → ∃ Y 

formally

.. code-block:: lean

		
        import data.nat.prime
        theorem postulateBertrand (n: ℕ): n > 3  → ∃ p : ℕ,  nat.prime p ∧ n <p ∧ p < 2*n -2 :=
        sorry
        
