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
    
  open sylow fintype

  local attribute [instance, priority 0] subtype.fintype set_fintype 
  local attribute [instance, priority 0] classical.prop_decidable

  universes u 
  variables {G H : Type u} [group G]

  theorem Cauchy_Theorem [fintype G] {p : ℕ} (hp : nat.prime p)
  (h : p ∣ card G) : ∃ x : G, order_of x = p := sorry 

