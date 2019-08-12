Triangle Inequality
-------------------

This article gives a formal statement of Triangle Inequality.  For Wikipedia's
description, see
`Triangle Inequality <https://en.wikipedia.org/wiki/Triangle_inequality>`_.


informally

    In mathematics, the triangle inequality states that for any triangle, the sum of the lengths of any two sides must be greater than or equal to the length of the remaining side

preformally

.. code-block:: text

    a and b are 2 points : vector ℝ n
    sub_vector (a, b) : v = a- b is the side that connect a and b 
    square_of_norm_vec (v): calculate the length square of v 
    
    a, b and c are 3 points of a triangle : vector ℝ n
    Triangle_Inequality_Theorem (a b c): length(a-b) <= length(b-c) + length(c-a)     

formally

.. code-block:: lean

   import data.vector data.vector2 data.real.ennreal data.real.basic
   open real  

    definition sum_list  : list ℝ   →  ℝ  
     | [] := 0
     | (a :: s) := a + sum_list s 

    definition sub_vec {n : ℕ} (v1 v2 : vector ℝ  n) := 
      vector.map₂ (λ a b : ℝ  , a - b) v1 v2

    notation u `-` v := sub_vec u v 

    definition square_of_norm_vec  {n : ℕ} (v: vector ℝ n): ℝ := 
       let w:= vector.map (λ x:ℝ  , x*x) v in (sum_list w.to_list) 
  
    theorem Triangle_Inequality_Theorem {n:ℕ} (a b c : vector ℝ  n) (h: n>0): 
      sqrt(square_of_norm_vec (a - b)) ≤ sqrt(square_of_norm_vec (b - c)) + sqrt(square_of_norm_vec (c - a)) := sorry 
