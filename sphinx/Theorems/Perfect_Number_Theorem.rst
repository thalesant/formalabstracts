Perfect Number Theorem
----------------------

This article gives a formal statement of Perfect Number Theorem.  For Wikipedia's
description, see
`Perfect Number Theorem <https://en.wikipedia.org/wiki/Perfect_number>`_.


informally

  Every even perfecr number has the form 2^(n-1)(2^n-1), where 2^n-1 is a prime number. 
  A perfect number is a natural number that equals the sum of its proper divisors

preformally

.. code-block:: text

  n: integer
  is_perfect(n): check n is a perfect number
    list_divisor (n): create a divisors' list of n
    sum_list(a: array of interger): calcul the sum of a
    if n = sumlist(list_divisor(n)) then n is a perfect number
                                     else n is not a perfect number
  m:interger
  perfect_number_theorem (m): is_even(m) and is_perfect(m)
                -> ∃ p:ℕ,  m = 2^(p-1)* (2^p-1) and  is_prime (2^p - 1)    

formally

.. code-block:: lean
  
    import data.nat.prime
    definition isEven(n:ℕ ): Prop := 2 ∣ n

    open nat

    --create a list of divisor
    def list_divisor : ℕ → ℕ  → list ℕ 
    |x 0 := [] 
    |x 1 := [1]
    |x (succ n) := if (succ n)∣x  then succ n:: (list_divisor x  n) 
                               else (list_divisor x n)

    --calcul the sum of list's elements
    def sum_List:list ℕ  →  ℕ 
    |[]:=0
    |(a::l):= a + sum_List l

    --check perfect number
    definition isPerfectNumber(p:ℕ):bool := sum_List(list_divisor p (p-1))=p

    --perfect number theorem
    theorem Perfect_Number_Theorem(m: ℕ) [isEven(m)][isPerfectNumber(m)]: 
    ∃ p:ℕ,  m = 2^(p-1)* (2^p-1) ∧  nat.prime (2^p - 1)
    := sorry
 