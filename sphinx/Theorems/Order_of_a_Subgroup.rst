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
  theorem lagrange_theorem : ∀ H : set G,
  is_subgroup H ∧ fintype.card H ∣ card G


formally

.. code-block:: lean

  import group_theory.order_of_element data.zmod.basic
  algebra.pi_instances group_theory.group_action group_theory.quotient_group

  import group_theory.sylow
  open equiv fintype finset is_group_action
  is_monoid_action function equiv.perm is_subgroup list quotient_group

  open sylow 

  local attribute [instance, priority 0] subtype.fintype set_fintype c
  local attribute [instance, priority 0] lassical.prop_decidable

  universes u v w
  variables {G H : Type u} {α : Type v} {β : Type w} [group G]

  theorem lagrange_theorem [fintype G] : ∀ H : set G, 
  is_subgroup H ∧ fintype.card H ∣ card G
  := sorry
