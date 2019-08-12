Desargues's Theorem
-------------------

This article gives a formal statement of Desargues's Theorem.  For Wikipedia's
description, see
`Desargues's Theorem <https://en.wikipedia.org/wiki/Desargues%27s_theorem>`_.


informally

  In projective geometry, Desargues's theorem, named after Girard Desargues, states:

Two triangles are in perspective axially if and only if they are in perspective centrally.
Denote the three vertices of one triangle by a, b and c, and those of the other by A, B and C. Axial perspectivity means that lines ab and AB meet in a point, lines ac and AC meet in a second point, and lines bc and BC meet in a third point, and that these three points all lie on a common line called the axis of perspectivity. Central perspectivity means that the three lines Aa, Bb and Cc are concurrent, at a point called the center of perspectivity.

preformally

.. code-block:: text

  Notations:
  a, b, c, A, B, C: ℝ × ℝ,
  line (a b): line passing through two points a and b,
  Theorem: (There exist three points p, q, s  such that lines ab and AB meet in p, lines ac and AC meet in q, and lines bc and BC meet in s; three points p, q, s are in the same line)↔ (three lines Aa, Bb and Cc are concurrent).
formally

.. code-block:: lean

  import data.real.ennreal 
  open real 

  def line (a b: ℝ × ℝ): set (ℝ × ℝ):= {x | ∃(t:ℝ ),  
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  theorem Desargues's_theorem {a b c : ℝ × ℝ } {A B C : ℝ × ℝ }
  : (∃ (p q s: ℝ × ℝ), (p ∈ line a b ∩ line A B) ∧ (q ∈ line a c ∩ line A C)
   ∧ (s ∈ line c b ∩ line C B) ∧ (s ∈ line p q)) 
  ↔ (∃ o: ℝ × ℝ, o ∈ line a A ∧ o ∈ line b B ∧ o ∈ line c C)
  := sorry

