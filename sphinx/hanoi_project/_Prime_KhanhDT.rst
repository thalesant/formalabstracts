HOMEWORKS
=====

**Exercise 1 - Twin Prime Conjecture**
------------
- Definition:
   *Twin primes* are pairs of prime numbers such that the larger member of the pair is exactly 2 greater than the smaller.
   
   *I.e.*: primes p and q such that q - p = 2. Explicitly, the first few twin primes are (3, 5), (5, 7), (11, 13), (17, 19), (29, 31), and (41, 43).

- Link to a source Definition of Twin Primes: [#Twin]_.

Formal statement
^^^^^^^^^^^^^^^^

.. code-block:: lean

 def TwinPrime: Prop:= 
 ∀n:ℕ, ∃p: ℕ, p>n ∧ isPrime p ∧ isPrime (p+2)

**Exercise 2 - Goldbach’s Conjecture**
------------
- Definition:
   *Goldbach’s Conjecture* Every even integer greater than 2 can be expressed as the sum of two primes.
   
   *I.e.*:  6 = 3 + 3
            8 = 3 + 5
            
            10 = 3 + 7 = 5 + 5
            
            12 = 7 + 5

- Link to a source Definition of Goldbach’s Conjecture: [#Goldbach]_.

Formal statement
^^^^^^^^^^^^^^^^

.. code-block:: lean

 def GoldBach (n:ℕ): Prop:=
 (n>2) ∧ (2∣n)∧ (∃ p q: ℕ, isPrime p ∧ isPrime q ∧ n = p+q)

**Exercise 3 - The Opperman Conjecture**
------------
- Definition: 
   *The Opperman Conjecture*: there is always a prime between n^2 and (n+1)^2.
   
- Link to a source The Opperman Conjecture: [#Opperman]_.

Formal statement
^^^^^^^^^^^^^^^^

.. code-block:: lean

 def Opperman: Prop:=
 ∀n: ℕ, ∃p:ℕ, isPrime p ∧ p>n^2 ∧ p< (n+1)^2


.. [#Twin] http://mathworld.wolfram.com/news/2004-06-09/twinprimes/
.. [#Goldbach] https://en.wikipedia.org/wiki/Goldbach%27s_conjecture
.. [#Opperman] https://primes.utm.edu/notes/conjectures/