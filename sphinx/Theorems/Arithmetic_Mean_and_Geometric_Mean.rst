Arithmetic Mean and Geometric Mean
----------------------------------

This article gives a formal statement of Arithmetic Mean and Geometric Mean.  For Wikipedia's
description, see
`Arithmetic Mean and Geometric Mean <https://en.wikipedia.org/wiki/Inequality_of_arithmetic_and_geometric_means>`_.


informally

  In mathematics, the inequality of arithmetic and geometric means, or more briefly the AM–GM inequality, states that the arithmetic mean of a list of non-negative real numbers is greater than or equal to the geometric mean of the same list; and further, that the two means are equal if and only if every number in the list is the same.
  :math:`{\frac  {x_{1}+x_{2}+\cdots +x_{n}}{n}}\geq {\sqrt[{n}]{x_{1}\cdot x_{2}\cdots x_{n}}}\,`

preformally

.. code-block:: 
  a: list (a_1, a_2,..., a_n), a_1,a_2,..., a_n > 0
  sum a := a_1 + a_2 +...+a_n, muli a:= a_1* a_2 *...* a_n, |a|: length of a (=n) 
  (sum a / (|a|)) ^ (|a|) ≥ muli a

formally

.. code-block:: lean

  import data.real.basic
  
 open real 
 def sumi:list ℝ → ℝ 
 | [] := 0
 | (l::h):= l + sumi h

 def muli:list ℝ → ℝ
 | [] := 1
 | (l::h):= l * muli h

 def Pos_List: list ℝ → Prop
 | a := ∀ m:ℝ, m ∈ a →  m > 0

 theorem Arithmetic_Mean_and_Geometric_Mean (a: list ℝ): 
 Pos_List a → (sumi a / (a.length)) ^ (a.length) ≥ muli a := sorry
