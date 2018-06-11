TITLE
Introduction


--Description goes here
Twin Primes Conjecture

Link to a source 

Informal statement
informal statement
preformally:

- preformal statement
Formal statement
formal statement (in Lean source)
--lean code goes here
def isPrime (n : ℕ) : Prop := 
(n ≥ 2) ∧ (∀ m : ℕ, m ≥ 1 ∧ m ∣ n → (m = 1 ∨ m =n))

definition isInfinite (s : set nat) :=
∀ k : nat, ∃ k' : s, k' > k 

--Twin Prime Conjecture------------
theorem TwinPrime : ∀ n: nat, (∃ p: nat, isPrime p ∧ isPrime (p + 2) ∧ p>=n)  := 
begin
admit,
end

theorem twin_primes_conjecture : isInfinite {p : nat | (isPrime p)
∧ (isPrime (p + 2))} := sorry 