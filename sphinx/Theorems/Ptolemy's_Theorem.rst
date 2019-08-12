Ptolemy's Theorem
-----------------

This article gives a formal statement of Ptolemy's Theorem.  For Wikipedia's
description, see
`Ptolemy's Theorem <https://en.wikipedia.org/wiki/Ptolemy%27s_theorem>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  In Euclidean geometry, Ptolemy's theorem is a relation between the four sides and two diagonals of a cyclic quadrilateral (a quadrilateral whose vertices lie on a common circle). The theorem is named after the Greek astronomer and mathematician Ptolemy (Claudius Ptolemaeus).[1] Ptolemy used the theorem as an aid to creating his table of chords, a trigonometric table that he applied to astronomy.

  If the vertices of the cyclic quadrilateral are A, B, C, and D in order, then the theorem states that:

  .. math::

    {\displaystyle |{\overline {AC}}|\cdot |{\overline {BD}}|=|{\overline {AB}}|\cdot |{\overline {CD}}|+|{\overline {BC}}|\cdot |{\overline {AD}}|} 


preformally

.. code-block:: text

  Notions: a b c d i : ℝ× ℝ, r>0
  segment (a b) :  {x | ∃(t:ℝ), 0≤ t ≤ 1 ∧ x=t*a+(1-t)*b}
  dist (a b): distance between two points a and b.
  Theorem: (there exist a circle (i,r) s.t. a b c d on circle (i,r), segment a b ∩ segment c d = ∅, segment b c ∩ segment d a = ∅)
  if and only if (dist a c) * (dist b d)= (dist a b) * (dist c d) + (dist a d) * (dist b c)  


formally

.. code-block:: lean

    import 
    data.real.ennreal 
    analysis.complex.exponential
  open real 
  open complex

  --Distance between two points in R^2
  noncomputable def Distance (a b: ℝ× ℝ  ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  def segment(a b: ℝ× ℝ): set (ℝ× ℝ):= {x | ∃(t:ℝ ), 0≤ t ∧ t≤ 1 ∧ 
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  theorem Ptolemy's_Theorem {a b c d : ℝ × ℝ }(h1:(a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c)
  ∧ (a ≠ d) ∧ (d ≠ b) ∧ (d ≠ c))(h2: segment a b ∩ segment c d = ∅ ∧ segment b c ∩ segment d a = ∅) 
  :( ∃ i: ℝ ×  ℝ, ∃ r : ℝ, (r>0) ∧ (Distance a i = r) ∧ (Distance b i =r) ∧ (Distance c i =r) ∧ (Distance d i =r) )
  ↔ (Distance a b) * (Distance c d) + (Distance b c) * (Distance d a) = (Distance a c) * (Distance b d)       
  := sorry


