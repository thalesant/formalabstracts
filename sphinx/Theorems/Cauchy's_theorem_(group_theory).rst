Cauchy's theorem (group theory)
-------------------------------

This article gives a formal statement of the Cauchy's theorem in group theory.  For Wikipedia's
description, see
`Cauchy's theorem <https://en.wikipedia.org/wiki/Cauchy%27s_theorem_(group_theory)>`_.

informally

.. code-block:: text

   Let G be a finite group and p be a prime. 
   If p divides the order of G,
   then G has an element of order p.

preformally

.. code-block:: text

  notation:
  (G : finite, group)
  (p : prime, ℕ)

  theorem: (p | card G) → (∃ x ∈ G, ord x = p)

formally

.. code-block:: lean

  import group_theory.sylow
  open  fintype 
        sylow 

  local attribute [instance, priority 0] subtype.fintype set_fintype classical.prop_decidable
  
  universes u v w
  variables {G H : Type u} {α : Type v} {β : Type w} [group G]

  theorem lagrange_theorem [fintype G] : ∀ H : set G, 
  is_subgroup H ∧ fintype.card H ∣ card G
  := sorry
