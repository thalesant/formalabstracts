Basel problem
-------------

This article gives a formal statement of Basel problem.  For Wikipedia's
description, see
`Basel problem <https://en.wikipedia.org/wiki/Basel_problem>`_.


informally

  The Basel problem asks for the precise summation of the reciprocals 
  of the squares of the natural numbers, i.e. the precise sum of the 
  infinite series:

  .. math::
    \sum_{n=1}^{\infty} \frac{1}{n^2} = \frac{1}{1^2} + \frac{1}{2^2} + \frac{1}{3^2} + \cdots.

  The sum of the series is approximately equal to 1.644934. The 
  Basel problem asks for the exact sum of this series (in closed form),
  as well as a proof that this sum is correct. Euler found the exact sum 
  to be 
  
  .. math::
    \frac{\pi^2}{6}.

    

 

preformally

  (n : ℕ)
  
  Function f : ℕ → ℝ

  .. math::
    f(n) = \frac{1}{n^2}.
  
  Function f is fomulated by (λn:ℕ, 1/(n:ℝ)*(n:ℝ)).
  
  Pi number
    
  .. math::
    \pi = real.pi.
  
  The exact sum of Basel_problem is
    Exact_Sum_of_Basel_Problem = real.pi^2/6.

  The sum of the series is formulated by function "is_sum" in LEAN
      is_sum (λn:ℕ, 1/(n:ℝ)*(n:ℝ)) Exact_Sum_of_Basel_Problem

formally

  .. code-block:: lean

    import analysis.real analysis.topology.infinite_sum 
    analysis.exponential
    
    noncomputable theory

    def Exact_Sum_of_Basel_Problem : ℝ := (real.pi^2)/6

    theorem Basel_Problem : is_sum (λn:ℕ, 1/(n:ℝ)*(n:ℝ)) Exact_Sum_of_Basel_Problem := sorry
