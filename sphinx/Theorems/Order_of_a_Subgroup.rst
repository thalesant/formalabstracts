Order of a Subgroup
-------------------

This article gives a formal statement of Order of a Subgroup.  For Wikipedia's
description, see
`Order of a Subgroup <https://en.wikipedia.org/wiki/Lagrange%27s_theorem_(group_theory)>`_.

informally

.. code-block:: text

  Lagrange's theorem, in the mathematics of group theory, states that for any finite group `G`,
  the order (number of elements) of every subgroup `H` of `G` divides the order of G. 

preformally

.. code-block:: text

  G: finite group
  theorem: ∀ H : subgroup of G, card H ∣ card G.


formally

.. code-block:: lean

  import group_theory.sylow
    
  open sylow fintype

  local attribute [instance, priority 0] subtype.fintype set_fintype 
  local attribute [instance, priority 0] classical.prop_decidable

  universes u 
  variables {G H : Type u} [group G]

  theorem lagrange_theorem [fintype G] : ∀ H : set G, 
  is_subgroup H ∧ fintype.card H ∣ card G
  := sorry
