Denumerability of the Rational Numbers
--------------------------------------

This article gives a formal statement of Denumerability of the Rational Numbers.  For Wikipedia's
description, see
`Denumerability of the Rational Numbers <https://en.wikipedia.org/wiki/Countable_set>`_.

informally

  A set :math:`S` is countable if there exists an injective function :math:`f` from :math:`S` to the natural numbers :math:`N = {0, 1, 2, 3, ...}`  
  
  If such an :math:`f` can be found that is also surjective (and therefore bijective), then :math:`S` is called countably infinite. 

  The set of rational numbers is countably infinite.


preformally

.. code-block:: text

  Notions: ℕ natural numbers, ℚ rational numbers.
  Theorem: there exists a surjective function f: ℕ → ℚ.

formally

.. code-block:: lean

  import data.real.ennreal

  open function
  theorem Denumerability_of_the_Rational_Numbers :
  ∃ f: ℕ → ℚ,  surjective f:= sorry 

