Formula for the Number of Combinations
--------------------------------------

This article gives a formal statement of Formula for the Number of Combinations.  For Wikipedia's
description, see
`Formula for the Number of Combinations <https://en.wikipedia.org/wiki/Combination>`_.


informally

  In mathematics, a combination is a selection of items from a collection, such that (unlike permutations) the order of selection does not matter. For example, given three fruits, say an apple, an orange and a pear, there are three combinations of two that can be drawn from this set: an apple and a pear; an apple and an orange; or a pear and an orange. More formally, a k-combination of a set S is a subset of k distinct elements of S. If the set has n elements, the number of k-combinations is equal to the binomial coefficient
  
  .. math::
  `{\displaystyle {\binom {n}{k}}={\frac {n(n-1)\dotsb (n-k+1)}{k(k-1)\dotsb 1}},} {\binom {n}{k}}={\frac {n(n-1)\dotsb (n-k+1)}{k(k-1)\dotsb 1}},`

  which can be written using factorials as 
  .. math::
  `{\displaystyle \textstyle {\frac {n!}{k!(n-k)!}}} \textstyle {\frac {n!}{k!(n-k)!}} `
  
  whenever 
  :math: `k\leq n`, and which is zero when :math: `k>n`. The set of all k-combinations of a set S is often denoted by :math: `{\displaystyle \textstyle {\binom {S}{k}}}`.

preformally

.. code-block:: text

  Notations:
  k:ℕ, s: finset
  Sub_set(k,s): set of all subsets of s that have k elements. 
  Theorem: if n≥ k then cardinality of Sub_set (k,s)=choose (n k), where n=cardinality of s.
formally

.. code-block:: lean

  import data.nat.basic
       data.finset
       data.set.basic
       data.fintype 
  open set        
  open nat
  open finset

  universes u 
  variables {A : Type u}

  def Sub_set (k:ℕ)(s: finset A): set (finset A) :=
  {t:finset A | t ⊂ s ∧ t.card = k}

  instance (k:ℕ)(s: finset A): fintype(Sub_set k s):=sorry


  theorem Number_Combination (s : finset A) : ∀ k:ℕ,  
  (s.card ≥ k) → (fintype.card(Sub_set k s)  = choose (s.card) k)
  := sorry
