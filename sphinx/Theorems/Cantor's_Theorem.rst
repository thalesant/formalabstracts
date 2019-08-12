Cantor's Theorem
----------------

This article gives a formal statement of Cantor's Theorem.  For Wikipedia's
description, see
`Cantor's Theorem <https://en.wikipedia.org/wiki/Cantor%27s_theorem>`_.


informally

  In elementary set theory, Cantor's theorem is a fundamental result that 
  states that, for any set A, the set of all subsets of A (the power set of A, denoted by P(A)) 
  has a strictly greater cardinality than A itself. 

preformally

.. code-block:: text

  A: set 
  powerset A 
  theorem: there doesn't exist f : from A to powerset A such that f is surjective.

formally

.. code-block:: lean

  import data.set.basic data.set.function
  open set 
  universes u 
  variables {α : Type u } 
  theorem Cantor's_Theorem {A : set α } :
  ¬ ∃ f,  surj_on f A (powerset A) := sorry 

