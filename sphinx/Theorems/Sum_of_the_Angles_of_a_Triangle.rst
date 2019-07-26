Sum of the Angles of a Triangle
-------------------------------

This article gives a formal statement of Sum of the Angles of a Triangle.  For Wikipedia's
description, see
`Sum of the Angles of a Triangle <https://en.wikipedia.org/wiki/Sum_of_angles_of_a_triangle>`_.

informally

  In several geometries, a triangle has three vertices and three sides, where three angles of a triangle are formed at each vertex by a pair of adjacent sides. In a Euclidean space, the sum of measures of these three angles of any triangle is invariably equal to the straight angle, also expressed as 180 °, π radians, two right angles, or a half-turn.

preformally

.. code-block:: text

  Notations: a b c points in R^2
  Euclid_distance (dist) between a b: sqrt((a.1-b.1)^2+(a.2-b.2)^2)
  Angle a b c: arccos(((a.1-b.1)*(c.1-b.1)+(a.2-b.2)*(c2-b2))/(dist(a b)*dist(c b)))
  Sum_of_angles_in_a_triangle_Theorem: angle (a b c) + angle (b c a) + angle (c a b)= pi 

formally

.. code-block:: lean

  import 
    data.real.ennreal 
    analysis.complex.exponential
  open real 
  open complex

  noncomputable def Distance (a b: ℝ × ℝ ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  noncomputable def Angle (a b c: ℝ × ℝ) : ℝ :=
  arccos (((a.1-b.1)*(c.1-b.1)+
  (a.2-b.2)*(c.2-b.2))/((Distance a b)*(Distance c b)))

  theorem Sum_of_angles_in_a_triangle {a b c : ℝ × ℝ } 
  : (a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c) →  Angle a b c + Angle b c a + Angle c a b = pi := sorry


