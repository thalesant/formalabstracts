Divisibility by 3 Rule
----------------------

This article gives a formal statement of Divisibility by 3 Rule.  For Wikipedia's
description, see
`Divisibility by 3 Rule <https://en.wikipedia.org/wiki/Divisibility_rule#Divisibility_by_3_or_9>`_.


informally

  An integer is divisible by 3 if and only if the sum of its digits is divisible by 3.

preformally

.. code-block:: text

  notations: 
  (X: integer)
  theorem divisibility_by_3_theorem :=  Divide_by_3 X ↔ Divide_by_3 (sumDigits X)
  

formally

.. code-block:: lean

    import data.nat.prime
    def sumDigits : ℕ → ℕ 
    |n := if (n<10) then n else have n /10 < n, from sorry,
            n % 10 + sumDigits (n/10)  
    theorem divisibility_by_3_theorem (n: ℕ ):  (3 ∣ n) ↔ (3 ∣ (sumDigits n)) := sorry
