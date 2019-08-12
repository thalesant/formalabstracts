Number of Subsets of a Set
--------------------------

This article gives a formal statement of Number of Subsets of a Set.  For Wikipedia's
description, see
`Number of Subsets of a Set <https://en.wikipedia.org/wiki/Power_set>`_.


informally

    A set with n elements has 2^n subsets

preformally

.. code-block:: text

    S is a finite set, P is power set of S 
    if cardinality(S) = n then cardinality(P) = 2^n
     

formally

.. code-block:: lean

    import data.set.finite

    universe u
    variable {α : Type u}

    theorem card_Pow (S: finset α) : (S.powerset).card = 2 ^ S.card :=
    begin
    admit,
    end
