Solution of a Cubic
-------------------

This article gives a formal statement of Solution of a Cubic.  For Wikipedia's
description, see
`Solution of a Cubic <https://en.wikipedia.org/wiki/Cubic_function#Derivation_of_the_roots>`_.


informally
  A cubic equation of the form ::math:`a x^3 +b x^2 + c x + d = 0 , a \neq 0`  has solutions:
  
  Let :math:`p := \frac{3ac - b^2}{9 a^2}` 

  Let :math:`q := \frac{9abc - 2b^3 - 27da^2}{54a^3}` 

  Let :math:`\Delta := \sqrt{q^2 + p^3}` 

  Let :math:`u := \sqrt[3]{q + \Delta}` 

  Let :math:`v := p/u` 

  Let :math:`z_1 := \frac{-1 + I*(\sqrt{3})}{2}` 

  Let :math:`z_2 := \frac{-1 - I*(\sqrt{3})}{2}` 

  If :math:`p = 0` then 

                        :math:`x_1 = \sqrt[3]{2q} - \frac{b}{3a}`

                        :math:`x_2 = \sqrt[3]{2q}z_1 - \frac{b}{3a}`

                        :math:`x_3 = \sqrt[3]{2q}z_2 - \frac{b}{3a}`  

If :math:`p \neq 0` then 

                        :math:`\Delta \neq 0`

                        :math:`x_1 = u - v - \frac{b}{3a}`

                        :math:`x_2 = u z_1 - v z_1 - \frac{b}{3a}`

                        :math:`x_2 = u z_2 - v z_2 - \frac{b}{3a}`  

preformally


formally

.. code-block:: lean

  import data.polynomial data.real.basic data.finsupp data.complex.basic

  open polynomial
  open real
  open complex


  noncomputable def cubic (a b c d:ℂ  ):polynomial ℂ := C d + C c*X + C b*X^2 + C a*X^3

  theorem Solution_of_the_cubic_1 (a b c d : ℂ)[a ≠ 0]:  
  let p := (3*a*c - b^2)/(9* a^2) in
  let q := (9*a*b*c - 2*b^3 - 27*d*a^2)/(54*a^3) in
  let delta := (q^2 + p^3)^(1/2) in
  let u := (q + delta)^(1/3) in
  let v := p/u in
  let z1 := (-1 + I*(sqrt 3))/2 in
  let z2 := (-1 - I*(sqrt 3))/2 in
  if p = 0 then 
  is_root (cubic a b c d) ((2*q)^(1/3) - b/(3*a)) 
  ∨ is_root (cubic a b c d) ((2*q)^(1/3)*z1 - b/(3*a)) 
  ∨ is_root (cubic a b c d) ((2*q)^(1/3)*z2 - b/(3*a))
  else 
  delta ≠ 0 ∧ 
  ( is_root (cubic a b c d) (u - v - b/(3*a)) 
  ∨ is_root (cubic a b c d) (u * z1 - v * z2 - b/(3*a)) 
  ∨ is_root (cubic a b c d) (u * z2 - v * z1 - b/(3*a))):= sorry

