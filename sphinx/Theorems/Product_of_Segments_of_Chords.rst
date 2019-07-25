Product of Segments of Chords
-----------------------------

This article gives a formal statement of Product of Segments of Chords.  For Wikipedia's
description, see
`Product of Segments of Chords <https://en.wikipedia.org/wiki/Intersecting_chords_theorem>`_.


informally

  The intersecting chords theorem or just chord theorem is a statement in elementary geometry that describes a relation of the four line segments created by two intersecting chords in a circle. It states that the products of the lengths of the line segments on each chord are equal.

  More precisely for two chords :math:`AC` and :math:`BD` intersecting in a point :math:`S` the following equation holds:

  .. math::
    {\displaystyle |AS|\cdot |SC|=|BS|\cdot |SD|}

  The converse is true as well, that is if for two line segments :math:`AC` and :math:`BD` intersecting in :math:`S` the equation above holds, then their four endpoints :math:`A, B, C and D` lie on a common circle. Or in other words if the diagonals of a quadrilateral :math:`ABCD` intersect in :math:`S` and fulfill the equation above then it is a cyclic quadrilateral.

  The value of the two products in the chord theorem depends only on the distance of the intersection point :math:`S` from the circle's center and is called the absolute value of the power of :math:`S`, more precisely it can be stated that:

  .. math::
    {\displaystyle |AS|\cdot |SC|=|BS|\cdot |SD|=r^{2}-d^{2}}

  where :math:`r` is the radius of the circle, and :math:`d` is the distance between the center of the circle, and the intersection point :math:`S`. This property follows directly from applying the chord theorem to a third chord going through :math:`S` and the circle's center :math:`M` (see drawing).

preformally

.. code-block:: text
  Notions: a b c d o i : ℝ× ℝ, r>0
  segment (a b) :  {x | ∃(t:ℝ), 0≤ t ≤ 1 ∧ x=t*a+(1-t)*b}
  dist (a b): distance between two points a and b.
  Theorem: If a b c d on circle (i,r), o ∈ segment(a b) and o ∈  segment(c d) then 
  (dist a o) * (dist b o)= (dist c o) * (dist d o) = r^2 - (dist i o)^2  

formally

.. code-block:: lean

  import 
    data.real.ennreal 
    analysis.complex.exponential
  open real 

  --Distance between two points in R^2
  noncomputable def Distance (a b: ℝ× ℝ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  def segment(a b: ℝ× ℝ): set (ℝ× ℝ):= {x | ∃(t:ℝ ), 0≤ t ∧ t≤ 1 ∧ 
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  theorem Product_of_Segments_of_Chords{a b c d o i: ℝ × ℝ }{r:ℝ }(h0:r>0)(h1:(a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c)
  ∧ (a ≠ d) ∧ (d ≠ b) ∧ (d ≠ c))(h2:(Distance a i = r) ∧ (Distance b i =r) ∧ (Distance c i =r) ∧ (Distance d i =r) )
  (h3:Distance i o < r)(h4: o ∈ segment a b ∧ o ∈  segment c d) 
  : ((Distance a o) * (Distance b o) = r^2 - (Distance i o)^2 )  ∧ ((Distance c o) * (Distance d o) = r^2 - (Distance i o)^2)     
    := sorry
