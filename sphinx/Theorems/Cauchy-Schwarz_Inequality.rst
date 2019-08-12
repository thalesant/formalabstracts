Cauchy-Schwarz Inequality
-------------------------

This article gives a formal statement of Cauchy-Schwarz Inequality.  For Wikipedia's
description, see
`Cauchy-Schwarz Inequality <https://en.wikipedia.org/wiki/Cauchy%E2%80%93Schwarz_inequality>`_.


informally

  Cauchy–Schwarz inequality states that for all vectors :math:`x` and :math:`y` of an inner product space it is true that:
  :math:`| <x,y> | ≤ norm x * norm y`  

preformally

.. code-block:: text

  ¦inner x y¦ ≤ norm x * norm y

formally

.. code-block:: lean

  import analysis.normed_space.basic data.real.nnreal algebra.module 

  -- Cauchy_Schwarz_ineq:
  --  "¦inner x y¦^2 ≤ norm x * norm y"

  --set_option class.instance_max_depth 54

  open vector_space

  variables {α : Type*} 
  [add_comm_group α ] [has_scalar ℝ α ] [vector_space ℝ α]

  class has_inner_product (α : Type*) := (inner: α → α → ℝ)

  export has_inner_product (inner)

  local notation x ` ⬝ ` y := inner x y

  class unita_with_norm (α : Type*) [add_comm_group α ] [has_scalar ℝ α ] [vector_space ℝ α] 
  extends has_inner_product α, has_norm α  :=
  (sym: ∀ x y:α , x ⬝ y = y ⬝ x )
  (add_dis : ∀ x y z : α , (x + y)⬝ z = x ⬝ z + y ⬝ z)
  (mul : ∀ (k : ℝ ) (x y : α) , (k • x) ⬝  y = k • (x ⬝ y))
  (pos : ∀ x : α , x ⬝ x ≥ 0)
  (eq_zero: ∀ x : α , x ⬝  x = 0 ↔ x = 0)
  (inner_norm: ∀ x : α , ∥x∥^2 = x ⬝ x )


  -- This theorem help the proof of Cauchy_Schwarz_ineq 
  theorem unita_to_normed_space [unita_with_norm α]: normed_group α := sorry


  theorem Cauchy_Schwarz_ineq (x y : α )[unita_with_norm α]:
  (abs (x ⬝ y)) ≤  ∥x∥ * ∥y∥ := sorry


