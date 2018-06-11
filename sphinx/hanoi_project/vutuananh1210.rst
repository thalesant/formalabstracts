.. Rudimentary article template

FORMAL STATEMENT FOR SOME CONJECTURES 
=====

Introduction
------------
- This article presents formal abstract statement of some famous conjectures in number theory using Lean Theorem Prover. 


- Link to  sources: 
    `GoldBach'Conjecture  <https://en.wikipedia.org/wiki/Goldbach%27s_conjecture>`_

    `Twin Prime Conjecture  <http://mathworld.wolfram.com/TwinPrimeConjecture.html>`_

    `Landau'problems  <https://en.wikipedia.org/wiki/Landau%27s_problems>`_

    `Polignac'Conjecture  <https://en.wikipedia.org/wiki/Polignac%27s_conjecture>`_

    `Oppermann's conjecture  <https://en.wikipedia.org/wiki/Oppermann%27s_conjecture>`_

Informal statement
------------------
  
- informal statement

preformally: ::

- preformal statement

Formal statement
----------------

- formal statement (in Lean source)

.. code-block:: lean

    ---- prerequisite defition 
    ---BEGIN
    def isPrime (n : ℕ) : Prop :=
    (n ≥ 2) ∧ (∀ m : ℕ, m ≥ 1 ∧ m ∣ n → (m = 1 ∨ m =n))

    #print isPrime 

    def infinite (s : set ℕ) : Prop := ∀ n : ℕ, ∃ m ∈ s, n < m

    #print infinite 

    ---END
    theorem goldbach_conjecture 
    (n:ℕ ): n>2 ∧  2∣ n → ∃ (p q : ℕ ), isPrime p ∧ isPrime q ∧ n = p+q:=

    begin
    admit, 
    end

    #print goldbach_conjecture


    theorem twinPrime_conjecture:
    infinite {p: ℕ| isPrime p ∧ (isPrime (p+2)∨ isPrime (p-2)) }:=
    begin
    admit,
    end 


    theorem  Third_Conjecture:

    infinite {p:ℕ|∃n: ℕ, isPrime p ∧ p = n*n+1}:=
    begin
    admit, 
    end 


    theorem  Polignac_Conjecture (n: ℕ ) : n>1 ∧  infinite {p: ℕ| isPrime p ∧ (isPrime (p+2*n )∨ isPrime (p-2*n)) }:=
    begin 
    admit, 
    end 




    theorem The_Opperman_Conjecture (n: ℕ ): ∃ p: ℕ, isPrime p ∧ p> n*n ∧ p < (n+1)*(n+1):=
    begin 
    admit, 
    end 




