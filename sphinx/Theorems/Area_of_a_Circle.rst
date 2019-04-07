Area of a Circle
----------------

This article gives a formal statement of Area of a Circle.  For Wikipedia's
description, see
`Area of a Circle <https://en.wikipedia.org/wiki/Area_of_a_circle>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  The area of a circle is :math:`π r^2`

preformally

.. code-block:: text

  (x : ℝ × ℝ)
  (r : ℝ) (H: r ≥ 0)
  measure_space(ℝ × ℝ)

  closed_ball (x) (r)

  pi * r^2 \geq 0

  Area (closed_ball (x) (r)) = pi * r^2


formally

.. code-block:: lean

  import measure_theory.measurable_space measure_theory.measure_space
  import topology.metric_space.basic analysis.exponential

  open real

  lemma pi_r_sq_pos_4 (r : ℝ) (H: 0 ≤ r): 0 ≤ r^2 * pi :=
  have 0 ≤ r^2, from pow_nonneg H 2,
  have 0 ≤ pi, from le_of_lt pi_pos,
  begin
      apply mul_nonneg ‹r^2 ≥ 0› ‹pi ≥ 0›,
  end

  namespace measure_theory
  open measure_space
  theorem Area (x : ℝ × ℝ) (r : ℝ) (H: r ≥ 0)[measure_space(ℝ × ℝ)]: volume(metric.closed_ball (x) (r)) = some ⟨ r^2 * pi, pi_r_sq_pos r H⟩ := sorry
  #check Area

  end measure_theory
