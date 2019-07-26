Sylow's Theorem
---------------

This article gives a formal statement of Sylow's Theorem.  For Wikipedia's
description, see
`Sylow's Theorem <https://en.wikipedia.org/wiki/Sylow_theorems>`_.


informally

  In mathematics, specifically in the field of finite group theory, the Sylow theorems
  are a collection of theorems that give detailed information about the number of subgroups
  of fixed order that a given finite group contains.

  The following theorems were first proposed and proven by Ludwig Sylow in 1872.

  Theorem 1: For every prime factor `p` with multiplicity `n` of the order of 
  a finite group `G`, there exists a Sylow `p`-subgroup of `G`, of order :math:`p^n`.

  Theorem 2: Given a finite group `G` and a prime number `p`,
  all Sylow `p`-subgroups of `G` are conjugate to each other,
  i.e. if `H` and `K` are Sylow `p`-subgroups of `G`,
  then there exists an element `g` in `G` with :math:`g^{−1}Hg = K`.


preformally

  G: finite group
  p: prime factor with multiplicity `n` of the order of the order of G

  Theorem 1: There exists a Sylow p-subgroup H of G such that 
  the order of H is p ^ n.
  
  
  Theorem 2: If H and K are Sylow p-subgroups of G then
  ∃ g : G such that g^{−1}Hg = K.

formally

.. code-block:: lean

    import group_theory.sylow
  
    open sylow fintype

    local attribute [instance, priority 0] subtype.fintype set_fintype 
    local attribute [instance, priority 0] classical.prop_decidable

    universes u v w
    variables {G H : Type u} {α : Type v}
    {β : Type w} [group G]

    theorem exists_subgroup_card_pow_prime [fintype G]{p : ℕ}(hp : nat.prime p ∧ (p ∣ card G)){n : ℕ} (hdvd : p ^ n ∣ card G ∧ ¬ (p^(n+1) ∣ card G)):
    ∃ H : set G, is_subgroup H ∧ fintype.card H = p ^ n 
    := sorry

    theorem sylow_psubgroup_conjugate1 [fintype G]{p : ℕ}(hp : nat.prime p ∧ (p ∣ card G)){n : ℕ} (hdvd : p ^ n ∣ card G ∧ ¬ (p^(n+1) ∣ card G)): ∀ (H K : set G),(is_subgroup H ∧ fintype.card H = p ^ n ∧ is_subgroup K ∧ fintype.card K = p ^ n)→ ∃ g : G, (∀ h: H, g⁻¹*h*g ∈ K) ∧ (∀ k: K, g*k*g⁻¹ ∈ H)
   := sorry  
