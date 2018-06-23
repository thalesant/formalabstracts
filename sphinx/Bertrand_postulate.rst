Bertrand's Postulate
====================

Introduction
------------
The `Bertrand's postulate <https://en.wikipedia.org/wiki/Bertrand%27s_postulate>`_ states 
that for any integer :math:`n>3` there always exists at least 
one prime number :math:`p` with :math:`n<p<2n-2`.


Formal statement
----------------

.. code-block:: lean

		
        import data.nat.prime
        theorem postulateBertrand (n: ℕ): n > 3  → ∃ p : ℕ,  nat.prime p ∧ n <p ∧ p < 2*n -2 :=
        sorry 
        
        
        

