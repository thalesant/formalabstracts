Cramer's Rule
-------------

This article gives a formal statement of Cramer's Rule.  For Wikipedia's
description, see
`Cramer's Rule <https://en.wikipedia.org/wiki/Cramer%27s_rule>`_.

*This article is a stub. You can improve it by completing
the formal abstract.*

informally
-------------------------------------
In linear algebra, Cramer's rule is an explicit formula for the solution of a system of linear equations with as many equations as unknowns,
valid whenever the system has a unique solution. Namely, consider a system of n linear equations for n unknowns, 
represented in matrix multiplication form as follows

.. math::
  Ax=b

where the n × n matrix A has a nonzero determinant, and the vector :math:`x=(x_{1},\ldots ,x_{n})^{\mathrm {T} }`
is the column vector of the variables. Then the theorem states that in this case the system has a unique solution, whose individual values for the unknowns are given by:

.. math::
  x_{i}=\frac {\det(A_{i})}{\det(A)} \qquad i=1,\ldots ,n
  
where :math:`A_{i}` is the matrix formed by replacing the i-th column of A by the column vector b.

preformally
---------------------
.. code-block:: text

 A: matrix n n ℝ
 x b: n 1 ℝ
 Cramer_rule: if Ax = b and det(A) ≠ 0 
              then x =  λ t k, (det(λ i j, if j = t then b i k else A i j)/ det(A))

formally
---------------------
.. code-block:: lean

  import ring_theory.determinant data.real.basic

  open matrix
  open real

  variables (n:ℕ)

  theorem Cramer_rule{A: matrix (fin n)(fin n) ℝ}
  {x : matrix (fin n) (fin 1) ℝ}{b : matrix (fin n) (fin 1) ℝ}
  (h1: A.mul x = b)(h2: det(A) ≠ 0) : 
  x =  λ t k, (det(λ i j, if j = t then b i k else A i j)/ det(A)) 
  := sorry
