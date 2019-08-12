Theorem of Ceva
---------------

This article gives a formal statement of Theorem of Ceva.  For Wikipedia's
description, see
`Theorem of Ceva <https://en.wikipedia.org/wiki/Ceva%27s_theorem>`_.


informally

  Ceva's theorem is a theorem about triangles in plane geometry. Given a triangle ABC, let the lines AO, BO and CO be drawn from the vertices to a common point O (not on one of the sides of ABC), to meet opposite sides at D, E and F respectively. (The segments AD, BE, and CF are known as cevians.) Then, using signed lengths of segments, 

  .. math::
  \dfrac{AF}{FB}\dfrac{BD}{DC}\dfrac{CE}{EA} = 1

  In other words, the length AB is taken to be positive or negative according to whether A is to the left or right of B in some fixed orientation of the line. For example, AF/FB is defined as having positive value when F is between A and B and negative otherwise.

preformally

.. code-block:: text

  Notions: a b c d e f o: ℝ× ℝ
  segment (a b):  {x | ∃(t:ℝ), 0≤ t ≤ 1 ∧ x = t*a + (1-t)*b}
  line (a b):  {x | ∃(t:ℝ), x = t*a + (1-t)*b}
  dist (a b): distance between two points a and b.
  sign_bwn (a b c d e f): d, e, f are respectively in segments bc, ca, ab or two points are not in the two segments and the other is in the other segment
  com_point(a b c d e f o): three lines cf, ad, eb have a common point o, and o is not in any segments ab, ac and bc
  Theorem: Let a b c be distinct points, the lines ao, bo and co be drawn from the vertices to a common point o (not on one of the sides of abc), to meet opposite sides at d, e and f respectively. Then    
   sign_bwn (a b c d e f) and ((Distance a f)/(Distance f b))*((Distance b d)/(Distance d c))* ((Distance c e)/(Distance e a)) = 1.

formally

.. code-block:: lean

    import  data.real.ennreal 
  open real 

  --Distance between two points in R^2
  noncomputable def Distance (a b: ℝ× ℝ  ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  def segment(a b: ℝ× ℝ): set (ℝ× ℝ):= {x | ∃(t:ℝ ),(t≥ 0)∧ (t ≤ 1)∧  
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  def line(a b: ℝ× ℝ): set (ℝ× ℝ):= {x | ∃(t:ℝ ), 
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  def bwn (a b f : ℝ×ℝ): Prop:= f ∈ segment a b 

  /-d, e, f are respectively in segments bc, ca, ab or two points are not in the two segments and the other is in the other segment -/
  def sign_bwn (a b c d e f : ℝ×ℝ): Prop:= ((bwn a b f)∧ (bwn b c d)∧ (bwn c a e))∨(¬ (bwn a b f)∧ ¬ (bwn b c d)∧ (bwn c a e))∨(¬ (bwn a b f)∧ (bwn b c d)∧¬(bwn c a e))∨((bwn a b f)∧ ¬(bwn b c d)∧ ¬(bwn c a e)) 

  /- three lines cf, ad, eb have a common point o, and o is not in any segments ab, ac and bc. -/
  def com_point(a b c d e f o: ℝ×ℝ): Prop:= o ∈ line c f ∧ o ∈ line a d ∧ o ∈ line e b ∧ ¬ (o ∈ segment c b)∧ ¬ (o ∈ segment a b)∧ ¬(o ∈ segment c a)

  theorem Theorem_of_Ceva {a b c : ℝ× ℝ} (h1:(a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c)):
  ∀ (d e f : ℝ × ℝ), (d ∈ line c b ∧ e ∈ line a c ∧ f ∈ line a b) ∧ 
  (∃ o : ℝ × ℝ, com_point a b c d e f o)  → (sign_bwn a b c d e f)∧ ((Distance a f)/(Distance f b))*((Distance b d)/(Distance d c))* ((Distance c e)/(Distance e a)) = 1
    := sorry