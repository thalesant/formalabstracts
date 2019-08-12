Heron's Formula
---------------

This article gives a formal statement of Heron's Formula.  For Wikipedia's
description, see
`Heron's Formula <https://en.wikipedia.org/wiki/Heron%27s_formula>`_.

informally

  Heron's formula states that the area of a triangle whose sides have lengths a, b, and c is
  
  .. math::
  {\displaystyle A={\sqrt {s(s-a)(s-b)(s-c)}},} A = \sqrt{s(s-a)(s-b)(s-c)},

  where s is the semi-perimeter of the triangle; that is,

  .. math::
  {\displaystyle s={\frac {a+b+c}{2}}.} s=\frac{a+b+c}{2}.

preformally

.. code-block:: text
  Notions: a b c: ℝ× ℝ,
  segment (a b):  {x | ∃(t:ℝ), 0≤ t ≤ 1 ∧ x = t*a + (1-t)*b},
  line (a b):  {x | ∃(t:ℝ), x = t*a + (1-t)*b},
  triangle (a b c): domain that bordered by three segments ab, ac and bc.

  Theorem: area of triangle (a b c) = sqrt (p*(p-A)*(p-B)*(p-C)), where p=(A+B+C)/2, A=dist(b c), B=dist(a c) and C=dist(a b) 
  

formally

.. code-block:: lean

  import measure_theory.measurable_space 
         measure_theory.measure_space
         data.real.ennreal
  open real  
  noncomputable def Distance (a b: ℝ× ℝ  ): ℝ := 
  sqrt ((a.1-b.1)^2 + (a.2-b.2)^2) 

  def segment(a b: ℝ× ℝ): set (ℝ× ℝ):= {x | ∃(t:ℝ ), 0≤ t ∧ t≤ 1 ∧ 
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  def line (a b: ℝ × ℝ): set (ℝ × ℝ):= {x | ∃(t:ℝ ),  
  (x.1=t*(a.1)+(1-t)*(b.1))∧
  (x.2=t*(a.2)+(1-t)*(b.2))}

  def Triangle (a b c : ℝ× ℝ) : set (ℝ × ℝ) := {x: ℝ × ℝ | ((line a x) ∩ (segment b c) ≠ ∅) ∧ ((line b x)∩ (segment a c) ≠ ∅) ∧ ((line c x)∩ (segment a b) ≠ ∅)}

  noncomputable def Haft_P (a b c: ℝ× ℝ  ): ℝ := 
  (Distance a b + Distance b c + Distance c a)/2 

  noncomputable def Herron_right_side (a b c: ℝ× ℝ  ): ℝ := 
  sqrt (Haft_P a b c *(Haft_P a b c - Distance a b )
  *(Haft_P a b c - Distance a c )*(Haft_P a b c - Distance c b ))

  lemma right_side_pos (a b c :ℝ × ℝ ): Herron_right_side a b c ≥ 0 
  := sorry 

  namespace measure_theory
  open measure_space
  instance real : measure_space ℝ := sorry
  instance {α β} [measure_space α] [measure_space β] : measure_space (α × β) :=
  sorry

  theorem Heron's_Formula (a b c :ℝ × ℝ):
  volume (Triangle a b c) = some ⟨ Herron_right_side a b c, right_side_pos a b c⟩
  := sorry 

  end measure_theory

