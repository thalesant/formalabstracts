Principle of Inclusion-Exclusion
--------------------------------

This article gives a formal statement of Principle of Inclusion-Exclusion.  For Wikipedia's
description, see
`Principle of Inclusion-Exclusion <https://en.wikipedia.org/wiki/Inclusion%E2%80%93exclusion_principle>`_.

informally

  In combinatorics (combinatorial mathematics), the inclusion–exclusion principle is a counting technique which generalizes the familiar method of obtaining the number of elements in the union of two finite sets; symbolically expressed as

  .. math::
    {\displaystyle |A\cup B|=|A|+|B|-|A\cap B|,}

  where A and B are two finite sets and |S| indicates the cardinality of a set S 

preformally

.. code-block:: text

  Notations: A, B: finite sets
             A_or_B: union of A and B,
             A_and_B: intersection of A and B
             |A|: cardinality of A.
  Theorem: |A_or_B| = |A| + |B| - |A_and_B|  

formally

.. code-block:: lean

  import data.finset 
  open finset 
  universes u 
  variables {α : Type u }[has_union (finset α)][has_inter(finset α)]

  theorem Principle_of_Inclusion_Exclusion : 
  ∀ A: finset α, ∀ B : finset α, (A ∪ B).card = A.card + B.card - (A∩B).card
  := sorry  


