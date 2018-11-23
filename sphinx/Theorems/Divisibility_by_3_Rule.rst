Divisibility by 3 Rule
----------------------

This article gives a formal statement of Divisibility by 3 Rule.  For Wikipedia's
description, see
`Divisibility by 3 Rule <https://en.wikipedia.org/wiki/Divisibility_rule#Divisibility_by_3_or_9>`_.


informally

  A number is divisible by 3 if and only if the sum of its digits is divisible by 3.

preformally

.. code-block:: text


  --INSERT

  

formally

.. code-block:: lean

    meta def sumDigits : ℕ  → ℕ  
    |0 := 0
    |n:= n % 10 + sumDigits (n/10)
    theorem divisibility_by_3 (n:ℕ ) : 3∣ (sumDigits n) ↔ 3 ∣ n := sorry

    
