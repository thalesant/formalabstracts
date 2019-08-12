Isosceles Triangle Theorem (Pons asinorum)
------------------------------------------

This article gives a formal statement of Isosceles Triangle Theorem (Pons asinorum).  For Wikipedia's
description, see
`Isosceles Triangle Theorem (Pons asinorum) <https://en.wikipedia.org/wiki/Pons_asinorum>`_.

informally

  In geometry, the statement that the angles opposite the equal sides of an isosceles triangle are themselves equal is known as the pons asinorum. Its converse is also true: if two angles of a triangle are equal, then the sides opposite them are also equal.

preformally

.. code-block:: text

  Notations: a b c vectors in R^2
  Euclid_distance (dist) between a b: sqrt((a.1-b.1)^2+(a.2-b.2)^2)
  Angle a b c: arccos(((a.1-b.1)*(c.1-b.1)+(a.2-b.2)*(c2-b2))/(dist(a b)*dist(c b)))
  Isosceles_Triangle_Theorem: if dist(a b) = dist(a c) then angle (a c b) = angle (a b c) 

formally

.. code-block:: lean

  import data.real.ennreal init.data.array analysis.exponential data.vector

  def sum_list {α : Type} [has_add α][has_zero α] : list α → α
  | [] := 0
  | (a :: s) := a + sum_list s 

  def sub_vec {α : Type} [has_sub α] {n : ℕ} ( v1 v2 : vector α n) 
  := vector.map₂ (λ a b : α, a - b) v1 v2

  def add_vec {α : Type} [has_add α] {n : ℕ} ( v1 v2 : vector α n) 
  := vector.map₂ (λ a b : α, a + b) v1 v2

  def inner_product_vec {α :Type} [has_add α] [has_mul α] [has_zero α] 
  {n:ℕ} (v1 v2 : vector α n)
  := let w:= vector.map₂ (λ x y:α, x*y) v1 v2 in sum_list w.to_list

  notation a `+` b := add_vec a b
  notation a `-` b := sub_vec a b 

  def square_of_norm_vec {n : ℕ} (v: vector ℝ n)
  := let w:= vector.map (λ x:ℝ, x*x) v in sum_list w.to_list

  -- Euclid distance between two points in R^n

  noncomputable def Euclid_distance {n:ℕ} (a b: vector ℝ n):= 
  real.sqrt (square_of_norm_vec (a - b))

  noncomputable def angle {n:ℕ} (a b c: vector ℝ n) : ℝ :=
  real.arccos ((inner_product_vec (a - b) (c - b))/ ((Euclid_distance a b)*(Euclid_distance c b))) 

  theorem Isosceles_Triangle_Theorem {a b c : vector ℝ 2} : 
  (a ≠ b) ∧ (c ≠ b) ∧ (a ≠ c) ∧ Euclid_distance a b = Euclid_distance a c 
  → angle a c b = angle a b c 
  := sorry