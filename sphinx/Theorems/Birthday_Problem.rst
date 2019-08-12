Birthday Problem
----------------

This article gives a formal statement of Birthday Problem.  For Wikipedia's
description, see
`Birthday Problem <https://en.wikipedia.org/wiki/Birthday_problem>`_.


informally

  In probability theory, the birthday problem or birthday paradox concerns the probability that, in a set of n randomly chosen people, some pair of them will have the same birthday. By the pigeonhole principle, the probability reaches 100% when the number of people reaches 367 (since there are only 366 possible birthdays,including February 29). However, 99.9% probability is reached with just 70 people, and 50% probability with 23 people. These conclusions are based on the assumption that each day of the year (excluding February 29) is equally probable for a birthday.

  The event of at least two of the n persons having the same birthday is complementary to all n birthdays being different. Therefore, its probability p(n) is

  .. math::
    p(n)=1-\dfrac{365!}{365^n(365-n)!}
  
preformally

.. code-block:: text
    Notations: n:ℕ, n>0
               S, T: sets, Cardinality of S=n, Cardinality of T =365
               p(n): The probability of event of at least two of the n persons having the same birthday   
    Not_Inj_on: set of functions from S to T that aren't injective.
    Maps_To: set of functions from S to T
    Theorem: p(n)=Cardinality of Not_Inj_on/Cardinality of Maps_To
     and 
    .. math::
     p(n)= 1-\dfrac{365!}{365^n(365-n)!}    

formally

.. code-block:: lean

  import data.set.basic data.set.function data.finset data.fintype
  open finset
  open set 
  open function 
  open nat 
  universes u 
  variables {α: Type u }
  
  def Not_Inj_on (S T: finset α ): set(α → α) := {f:α → α | maps_to f (to_set S) (to_set T) ∧ ¬ (inj_on f (to_set S))}
  def Maps_To (S T: finset α ): set(α → α) := { f:α → α | maps_to f (to_set S) (to_set T)}

  instance(S T: finset α): fintype (Not_Inj_on S T):=sorry
  instance(S T: finset α): fintype (Maps_To S T):=sorry 

  theorem Birthday_Problem : ∀n:ℕ, (n>0) → ∀ (S T : finset α ), S.card=n ∧ T.card = 365 → fintype.card (Not_Inj_on S T)/fintype.card(Maps_To S T) = 1-(fact(365) /((365^n)*fact(365-n)))
  := sorry

  theorem Birthday_Problem_23 : ∀ (S T : finset α ), 
  S.card=23 ∧ T.card = 365 → fintype.card (Not_Inj_on S T)/fintype.card(Maps_To S T) > 0.5 
  := sorry 

  theorem Birthday_Problem_70 : ∀ (S T : finset α ), S.card=70 ∧ T.card = 365 → (fintype.card (Not_Inj_on S T)/fintype.card(Maps_To S T) > 0.999) 
  := sorry 

