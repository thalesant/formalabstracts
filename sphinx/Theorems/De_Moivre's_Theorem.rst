De Moivre's Theorem
-------------------

This article gives a formal statement of De Moivre's Theorem.  For Wikipedia's
description, see
`De Moivre's Theorem <https://en.wikipedia.org/wiki/De_Moivre%27s_formula>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally

  de Moivre's formula (also known as de Moivre's theorem and de Moivre's identity), named after Abraham de Moivre, states that for any real number x and integer n it holds that

  :math:`{\displaystyle {\big (}\cos(x)+i\sin(x){\big )}^{n}=\cos(nx)+i\sin(nx),}`

preformally

.. code-block:: text

  ∀ (n:ℕ) (x:ℂ), (cos x + I * sin x)^n = cos (n*x) + I * sin (n*x) 

formally

.. code-block:: lean

  import data.complex.exponential analysis.exponential
  open real
  open complex
  theorem De_Moivres_formula: ∀ (n:ℕ) (x:ℂ), (cos x + I * sin x)^n = cos (n*x) + I * sin (n*x):= sorry 
  
