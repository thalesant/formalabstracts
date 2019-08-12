Principle of Mathematical Induction
-----------------------------------

This article gives a formal statement of Principle of Mathematical Induction.  For Wikipedia's
description, see
`Principle of Mathematical Induction <https://en.wikipedia.org/wiki/Mathematical_induction>`_.


informally

  In second-order logic, we can write down the "axiom of induction" as follows:
  :math:`{\displaystyle \displaystyle \forall P{\Bigl (}P(0)\land \forall k{\bigl (}P(k)\to P(k+1){\bigr )}\to \forall n{\bigl (}P(n){\bigr )}{\Bigr )}} {\displaystyle \displaystyle \forall P{\Bigl (}P(0)\land \forall k{\bigl (}P(k)\to P(k+1){\bigr )}\to \forall n{\bigl (}P(n){\bigr )}{\Bigr )}}`,
  where P(.) is a variable for predicates involving one natural number and k and n are variables for natural numbers.

preformally

.. code-block:: text
 notation (P:ℕ→ Prop)
 theorem P 0 ∧ (∀ k, P k → P(k+1)) → (∀ n, P n) 

formally

.. code-block:: lean

  theorem Math_induction:  ∀ (P: ℕ → Prop), P 0 ∧ (∀ k, P k → P(k+1)) → (∀ n, P n):=sorry
