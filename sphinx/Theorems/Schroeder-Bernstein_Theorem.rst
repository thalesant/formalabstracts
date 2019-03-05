Schroeder-Bernstein Theorem
---------------------------

This article gives a formal statement of Schroeder-Bernstein Theorem.  For Wikipedia's
description, see
`Schroeder-Bernstein Theorem <https://en.wikipedia.org/wiki/Schr%C3%B6der%E2%80%93Bernstein_theorem>`_.

informally
-------------------------------

  In set theory, the Schröder–Bernstein theorem states that,
  if there exist injective functions :math:`f : A → B` and :math:`g : B → A` 
  between the sets A and B,  then there exists a bijective function :math:`h : A → B`.

preformally
--------------------------------

.. code-block:: text

  A, B: sets
  f : A -> B is injective
  g : B -> A is injective
  Then there exists a bijective function h : A → B

formally
-------------------------------

.. code-block:: lean

  import data.set.basic data.set.function
  universes u v
  variables {α : Type u} {β : Type v}

  open set
  theorem Schroeder_Bernstein_theorem {f: α → β}{g: β → α}{a : set α}{b: set β}
  (h1: inj_on f a )(h2: inj_on g b) :  ∃h, bij_on h a b := sorry

