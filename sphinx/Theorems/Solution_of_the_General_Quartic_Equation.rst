Solution of the General Quartic Equation
----------------------------------------

This article gives a formal statement of Solution of the General Quartic Equation.  For Wikipedia's
description, see
`Solution of the General Quartic Equation <https://en.wikipedia.org/wiki/Quartic_function#Solution_methods>`_.

informally

  A general quartic equation of the form ::math:`a x^4 +b x^3 + c x^2 + d x + e = 0 , a \neq 0`  has solutions:
  
  Let :math:`y` is the root of cubic equation :math:`y^3 - b y^2 + (ac - 4d)y +  (a^2) * d + 4 * b * d - c^2 = 0 `  

  Let :math:`R := \sqrt{\frac{a^2}{4} - b + y}` 

  Let :math:`s := \sqrt{y^2 - 4d}` 

  If R = 0 then let :math:`S := \sqrt{3 \frac{a^2}{4} - 2b + 2s}` and :math:`E := \sqrt{3 \frac{a^2}{4} - 2b - 2s}`

  Else let :math:`S := \sqrt{3 \frac{ a^2 }{ 4} - R^2 - 2 b + \frac{4 a b - 8 c - a^3}{ 4R}}` and :math:`E := \sqrt{3 \frac{ a^2 }{ 4} - R^2 - 2 b - \frac{4 a b - 8 c - a^3}{ 4R}}`  

  :math:`x_1 = \frac{-a }{ 4} + \frac{R }{ 2} + \frac{S }{ 2}` 

  :math:`x_2 = \frac{-a }{ 4} + \frac{R }{ 2} - \frac{S }{ 2}`

  :math:`x_3 = \frac{-a }{ 4} - \frac{R }{ 2} + \frac{E }{ 2}`

  :math:`x_4 = \frac{-a }{ 4} - \frac{R }{ 2} - \frac{E }{ 2}`

 

preformally

.. code-block:: text

  --INSERT

formally

.. code-block:: lean

  import data.polynomial data.real.basic data.finsupp data.complex.basic Solution_of_the_cubic

  open polynomial
  open real
  open complex

  variables y:ℂ 

  noncomputable def cubic (a b c d:ℂ  ):polynomial ℂ := C a*X^3 + C b*X^2 + C c*X + C d
  noncomputable def general_quartic (a b c d e:ℂ  ):polynomial ℂ := C a*X^4 + C b*X^3 + C c*X^2 + C d*X + C e

  theorem Solution_of_the_general_quartic (a b c d e : ℂ)[a ≠ 0] :
  let A := 1 + 0*I in
  let B := -b in
  let C := a*c - 4*d in
  let D := (a^2) * d + 4 * b * d - c^2 in
  let is_root (cubic A B C D) y in
  let R := sqrt((a^2)/4 - b + y) in
  let s := sqrt((y^2) - 4*d) in
  if R = 0 then let S := sqrt(3*(a^2)/4 - 2*b + 2*s) 
          else let S := sqrt(3 * a^2 / 4 - R^2 - 2 * b + (4 * a * b - 8 * c - a^3) / (4 * R)))) in
  if R = 0 then let E := sqrt(3*(a^2)/4 - 2*b - 2*s) 
          else let E := sqrt(3 * a^2 / 4 - R^2 - 2 * b - (4 * a * b - 8 * c - a^3) / (4 * R)))) in
  is_root (general_quartic a b c d e) (-a / 4 + R / 2 + S / 2) ∨
  is_root (general_quartic a b c d e) (-a / 4 + R / 2 - S / 2) ∨
  is_root (general_quartic a b c d e) (-a / 4 - R / 2 + E / 2) ∨
  is_root (general_quartic a b c d e) (-a / 4 - R / 2 - E / 2) := sorry

