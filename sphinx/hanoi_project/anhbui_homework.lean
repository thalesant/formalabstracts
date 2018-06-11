-- Twin Prime Conjecture: There are infinitely many pairs of prime s p and p + 2

definition isInfinite (s : set ℕ) :=
-- for every k in N, s must be unbounded, so there must be a k' with k' > k
∀ k : ℕ, ∃ k' ∈ s, k' > k

definition isPrime (p : ℕ) : Prop :=
-- Require p >= 2, for every k | p, k = 1 or k = p,
p >= 2 ∧ (∀ k, k ∣ p → (k = 1 ∨ k = p))

theorem twin_primes_conjecture: Prop := ∀ n, ∃ p > n, isPrime p ∧ isPrime (p + 2)

def isEven (n:nat) : Prop := n> 1 ∧ (2 ∣ n)

theorem Goldbach : Prop := ∀ n > 2, isEven n → ∃ p q, isPrime p ∧ isPrime q ∧ n = p + q

theorem Polignac :Prop := ∀ n, ∃p > n, ∀ m, isPrime m → (m = p ∨ m = (p + 2*n))

theorem Opperman :Prop := ∀ m :ℕ, isPrime m → ∃ n, m ≥ n^2 ∧ m ≤ (n+1)^2