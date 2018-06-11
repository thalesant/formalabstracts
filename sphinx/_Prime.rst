.. Rudimentary article template

HOMEWORK
=======

**1. Excercise 1**
------------
 **Twin Prime Conjecture** *Source* Wiki_
    A twin prime is a prime number that is either 2 less or 2 more than another prime number.
    For example, either member of the twin prime pair (41, 43) 
   
 **Code in Lean - Twin Prime Conjecture**

::

def isPrime (n: ℕ): Prop:=
(n≥2)∧ (∀m:ℕ, m≥1 ∧ m∣n→ (m=1 ∨ m=n))
def TwinPrime: Prop:=
∀n:ℕ, ∃p: ℕ, p>n ∧ isPrime p ∧ isPrime (p+2)



Formal statement
----------------

- formal statement (in Lean source)


.. _Wiki: https://en.wikipedia.org/wiki/Twin_prime