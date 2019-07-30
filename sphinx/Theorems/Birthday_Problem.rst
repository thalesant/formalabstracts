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

  import data.set.basic data.set.function data.finset 
  open finset
  open set 
  open function 
  open nat 
  universes u 
  variables {α β  : Type u } 
  
  def Not_Inj_on (S T: set α ): set(α → α) := { f:α → α | maps_to f S T ∧ ¬ (inj_on f S)}
  def Maps_To (S T: set α ): set(α → α) := { f:α → α | maps_to f S T }

  theorem Birthday_Problem : ∀n:ℕ, (n>0) → ∀ (S T : finset α ), S.card=n ∧ T.card = 365 → (∃ s1: set α , ∃ t1: set α , ∃ Birth: finset (α → α ),∃ Maps: finset (α → α ), (to_set S=s1) ∧ (to_set T=t1) ∧ (to_set Birth=Not_Inj_on s1 t1) ∧ (to_set Maps=Maps_To s1 t1) ∧ (Birth.card/Maps.card = 1-(fact(365) /((365^n)*fact(365-n))))) 
  := sorry

  theorem Birthday_Problem_23 : ∀ (S T : finset α ), 
  S.card=23 ∧ T.card = 365 → (∃ s1: set α , ∃ t1: set α , 
      ∃ Birth: finset (α → α ),∃ Maps: finset (α → α ), (s1=to_set(S)) ∧ (t1=to_set(T)) ∧ (to_set Birth=Not_Inj_on s1 t1) ∧ (to_set Maps= Maps_To s1 t1) ∧ Birth.card/Maps.card > 0.5) 
  := sorry 

  theorem Birthday_Problem_70 : ∀ (S T : finset α ), S.card=70 ∧ T.card = 365 → (∃ s1: set α , ∃ t1: set α , ∃ Birth: finset (α → α ),∃ Maps: finset (α → α ), (to_set S=s1) ∧ (to_set T=t1) ∧ (to_set Birth=Not_Inj_on s1 t1) ∧ (to_set Maps=Maps_To s1 t1) ∧ Birth.card/Maps.card > 0.999) 
  := sorry 

