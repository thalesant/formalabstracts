Fundamental Theorem of Arithmetic
---------------------------------

This article gives a formal statement of Fundamental Theorem of Arithmetic.  For Wikipedia's
description, see
`Fundamental Theorem of Arithmetic <https://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic>`_.

informally

  In number theory, the fundamental theorem of arithmetic, also called the unique factorization theorem or 
  the unique-prime-factorization theorem, states that every integer greater than 1 either is a prime number itself or can be represented as the product of prime numbers and that, moreover, this representation is unique, up to (except for) the order of the factors.

preformally

.. code-block:: text

  check_list_perm: function that check whether two list m, n can be obtained from each other by some permutation
  Prod_list : product of all elements of a list
  Is_List_Prime: check whether all elements of a list are prime 
  Fundamental_Theorem_of_Arithmetic: if n: integer and n>1 then ∃ a: list of prime numbers
  s.t Prod_list(a)=n and ∀ b: list of prime numbers if Prod_list (b)= n then check_list_perm(a,b)=T    
  

formally

.. code-block:: lean

  import data.nat.prime data.list.perm  

  open nat 
  open list

  definition  check_list_perm (m n : list nat ) : bool :=  m ~ n

  def Prod_list: list ℕ → ℕ 
  | [] := 1
  | (l::h):= l * Prod_list h 

  definition  Is_List_Prime (a: list ℕ) : bool := 
  take_while (λ x, prime x) a = a

  theorem Fundamental_Theorem_of_Arithmetic {n : ℕ } :
  (n>1) → ∃ a: list ℕ, (Prod_list a= n) ∧ Is_List_Prime a ∧ 
  ∀ b: list ℕ, (Prod_list b= n) ∧ Is_List_Prime b → check_list_perm a b   
   := sorry