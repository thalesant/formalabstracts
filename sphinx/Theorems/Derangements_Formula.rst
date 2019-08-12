Derangements Formula
=======================

Introduction
------------

This article gives a formal statement of the Derangements Formula.
For Wikipedia's description, see `Derangements Formula <https://en.wikipedia.org/wiki/Derangement>`_.


Informal statement
------------------
A **derangement** on a set :math:`X` is a permutation :math:`\sigma : X \to X` with no fixed points: for every :math:`x \in X`, :math:`\sigma(x) \neq x`.

The Derangements Formula counts the number of derangements on a finite set. Given a set :math:`X` with :math:`\#X = n`, the number of derangements on :math:`X` is given by:

.. math::

       n! \sum_{k = 0}^n \dfrac{(-1)^k}{k!}.

preformally

.. code-block:: text
   Notations: 
   n: ℕ, 
   l, s : list ℕ
   list_ini_nat (n): [1,2,...,n] 
   subfactorial (n) :  subfactorial function
   test_list_coincide l s : check whether two lists l and s have the same element at the same position. 
   check_list_perm l s: check whether l and s are permutations
   of each other.
   set_list_derangement (n): the set of derangements of n initial positive integers 
   Theorem: for all n: ℕ (n>0), cardinality of set_list_derangement (n)= subfactorial (n).  

Formal statement
----------------

.. code-block:: lean

    import data.list.perm data.set.finite data.fintype 

    open list
    open finset fintype 
    
    /-permutiation (1,2,..,n)-/
    def list_ini_nat : ℕ → list ℕ
    | 0 := []
    | 1 := [1]
    | (n+1) := append (list_ini_nat n) [n+1]

    /-subfactorial function-/
    def subfactorial : ℕ → ℕ 
    | 0:= 1
    | 1:= 0
    | (n+2) := (n+1)*(subfactorial (n+1) + subfactorial n)

    /-check whether two lists have the same element at the same position-/
    def test_list_coincide: list ℕ → list ℕ → bool 
    |[][] := ff 
    |[] s := ff 
    |l [] := ff 
    |(a::l) (b::s) := if (a=b) then tt else (test_list_coincide l s) 

    /-check whether two lists can obtain one from the other by some permutation -/
    definition  check_list_perm (m n : list ℕ ) : bool :=  m ~ n
    #eval check_list_perm [1, 2,3] [3,1,4]

    /-set of derangements of set consists of n initial positive integers-/
    def set_list_derangement (n:ℕ ) : set (list ℕ) := {p | check_list_perm p (list_ini_nat n) ∧ ¬(test_list_coincide p (list_ini_nat n))}

    instance (n:ℕ ):fintype (set_list_derangement (n:ℕ )):= sorry 

    theorem Derangements_Formula_Theorem :
    ∀ (n:ℕ), (n > 0) → fintype.card(set_list_derangement n) = subfactorial n := sorry 

