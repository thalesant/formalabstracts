HOMEWORKS
=====

**Exercise 1 - Twin Prime Conjecture**
------------
- Definition:
   *Twin primes* are pairs of prime numbers such that the larger member of the pair is exactly 2 greater than the smaller.
   
   *I.e.*: primes p and q such that q - p = 2. Explicitly, the first few twin primes are (3, 5), (5, 7), (11, 13), (17, 19), (29, 31), and (41, 43).

- Link to a source Definition of Twin Primes: [#Twin]_.


Informal statement
------------------
  
- informal statement

preformally: ::

- preformal statement

Formal statement
----------------

.. code-block:: lean

 def TwinPrime: Prop:= 
 ∀n:ℕ, ∃p: ℕ, p>n ∧ isPrime p ∧ isPrime (p+2)

.. [#Twin] http://mathworld.wolfram.com/news/2004-06-09/twinprimes/