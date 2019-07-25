Leibniz's Series for Pi
-----------------------

This article gives a formal statement of Leibniz's Series for Pi.  For Wikipedia's
description, see
`Leibniz's Series for Pi <https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80>`_.


informally

  The Leibniz formula for π, named after Gottfried Leibniz, states that

  .. math::
    {\displaystyle 1\,-\,{\frac {1}{3}}\,+\,{\frac {1}{5}}\,-\,{\frac {1}{7}}\,+\,{\frac {1}{9}}\,-\,\cdots \,=\,{\frac {\pi }{4}}.}


preformally

.. code-block:: text

   Theorem: sum ((-1)^n /(2*n+1)) = pi/4
   

formally

.. code-block:: lean

  import topology.algebra.infinite_sum 
        analysis.complex.exponential 
        data.real.ennreal
  open real 
  open complex 

  theorem Leibniz's_Series_for_Pi [topological_add_monoid ℝ] 
  : has_sum (λ n :ℕ , ((-1)^n :ℝ  )/(2*n+1)) (pi/4) := sorry

