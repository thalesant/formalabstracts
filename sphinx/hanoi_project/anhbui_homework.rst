.. Rudimentary article template

Twin Prime Conjecture
=====================
Introduction
-----------
`A twin prime <https://en.wikipedia.org/wiki/Twin_prime>`_ is a prime number that is either 2 less or 2 more than another prime number.
    
Informal statement
------------------

preformally: ::

 There are infinitely many pairs of primes p and p+2.

Formal statement
----------------

.. code-block:: lean 

 theorem twin_primes_conjecture: Prop := ∀ n, ∃ p > n, isPrime p ∧ isPrime (p + 2)


Goldbach Conjecture
=====================
Introduction
-----------
`Goldbach's conjecture <https://en.wikipedia.org/wiki/Goldbach%27s_conjecture>`_ is one of the oldest and best-known unsolved problems in number theory and all of mathematics.
    
Informal statement
------------------

preformally: ::

 Every even positive integer greater than 2 can be written as the sum of two primes.

Formal statement
----------------

.. code-block:: lean 

  theorem goldbach_conjecture : Prop := ∀ n > 2, isEven n → ∃ p q, isPrime p ∧ isPrime q ∧ n = p + q

Polignac Conjecture
=====================
Introduction
-----------
`Polignac's conjecture <https://en.wikipedia.org/wiki/Polignac%27s_conjecture>`_ was made by Alphonse de Polignac in 1849.
    
Informal statement
------------------

preformally: ::

 For any positive even number n, there are infinitely many prime gaps of size n. In other words: There are infinitely many cases of two consecutive prime numbers with difference n.

Formal statement
----------------

.. code-block:: lean 

  theorem polignac_conjecture :Prop := ∀ n, ∃p > n, ∀ m, isPrime m → (m = p ∨ m = (p + 2*n))

