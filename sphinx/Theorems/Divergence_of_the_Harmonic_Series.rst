Divergence of the Harmonic Series
---------------------------------

This article gives a formal statement of Divergence of the Harmonic Series.  For Wikipedia's
description, see
`Divergence of the Harmonic Series <https://en.wikipedia.org/wiki/Harmonic_series_(mathematics)>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  In mathematics, the harmonic series is the divergent infinite series:
.. math:: 
  {\displaystyle \sum _{n=1}^{\infty }{\frac {1}{n}}=1+{\frac {1}{2}}+{\frac {1}{3}}+{\frac {1}{4}}+{\frac {1}{5}}+\cdots } {\displaystyle \sum _{n=1}^{\infty }{\frac {1}{n}}=1+{\frac {1}{2}}+{\frac {1}{3}}+{\frac {1}{4}}+{\frac {1}{5}}+\cdots }

preformally

.. code-block:: text
.. math:: 
  {\displaystyle \sum _{n=1}^{\infty }{\frac {1}{n}}=1+{\frac {1}{2}}+{\frac {1}{3}}+{\frac {1}{4}}+{\frac {1}{5}}+\cdots } {\displaystyle \sum _{n=1}^{\infty }{\frac {1}{n}}=1+{\frac {1}{2}}+{\frac {1}{3}}+{\frac {1}{4}}+{\frac {1}{5}}+\cdots }

is divergence.
formally

.. code-block:: lean

  import  topology.algebra.infinite_sum data.real.ennreal   
theorem Diver_Harmonic_Series [topological_add_monoid ℝ] 
: ¬ has_sum (λ n :ℕ , 1/(n+1:ℝ )) := sorry
