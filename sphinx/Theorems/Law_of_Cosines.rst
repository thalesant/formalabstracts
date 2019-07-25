Law of Cosines
--------------

This article gives a formal statement of Law of Cosines.  For Wikipedia's
description, see
`Law of Cosines <https://en.wikipedia.org/wiki/Law_of_cosines>`_.


informally

  In trigonometry, the law of cosines (also known as the cosine formula, cosine rule, or Al-Kashi's theorem) relates the lengths of the sides of a triangle to the cosine of one of its angles. The law of cosines states

  .. math::
      {\displaystyle C^{2}=A^{2}+B^{2}-2AB\cos \gamma ,}

  where :math:`γ` denotes the angle contained between sides of lengths :math:`A` and :math:`B` and opposite the side of length :math:`C`. For the same figure, the other two relations are analogous:
  
  .. math::
    {\displaystyle A^{2}=B^{2}+C^{2}-2BC\cos \alpha ,}
    
    {\displaystyle B^{2}=A^{2}+C^{2}-2AC\cos \beta .}

preformally

.. code-block:: text

  Notions: a b c three points in R^2
  Euclid_distance (dist) between a b: sqrt((a.1-b.1)^2+(a.2-b.2)^2)
  Angle a b c: arccos(((a.1-b.1)*(c.1-b.1)+(a.2-b.2)*(c2-b2))/(dist(a b)*dist(c b)))  
  theorem: A^2=B^2+C^2-2*BC cos(angle(b a c)) (A=dist(b c), B=dist(a c), C=dist(a b)) 

formally

.. code-block:: lean

  import 
  data.real.ennreal 
  analysis.complex.exponential
  open real 
  open complex

  --Distance between two points in R^2
  noncomputable def Distance (a b: ℝ × ℝ ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  noncomputable def Angle (a b c: ℝ × ℝ) : ℝ :=
  arccos (((a.1-b.1)*(c.1-b.1)+
  (a.2-b.2)*(c.2-b.2))/((Distance a b)*(Distance c b)))

  theorem Law_of_Cosines {a b c : ℝ × ℝ } 
  :(a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c) → ((Distance a b)^2= (Distance a c)^2 + (Distance b c)^2 -
  2*(Distance a c)*(Distance b c)* cos(Angle b c a) 
  ∧  (Distance a c)^2= (Distance a b)^2 + (Distance b c)^2 -
  2*(Distance a b)*(Distance b c)* cos(Angle c b a)
  ∧ (Distance c b)^2= (Distance a c)^2 + (Distance b a)^2 -
  2*(Distance a c)*(Distance b a)* cos(Angle b a c) )
    := sorry

