def isPrime (n: ℕ): Prop:=
(n≥2)∧ (∀m:ℕ, m≥1 ∧ m∣n→ (m=1 ∨ m=n))

#print isPrime

def GoldBach (n:ℕ): Prop:=
(n>2) ∧ (2∣n)∧ (∃ p q: ℕ, isPrime p ∧ isPrime q ∧ n = p+q)

def TwinPrime: Prop:=
∀n:ℕ, ∃p: ℕ, p>n ∧ isPrime p ∧ isPrime (p+2)

#print TwinPrime 
@GoldBach rlf 

--def setOfTwinPrime := {n:ℕ | isTwinPrime n}
--def InfiniteTwinPrime (s: set ℕ): Prop :=
--∀n: ℕ, ∃m ∈ s, isTwinPrime m ∧ n<m
def Opperman: Prop:=
∀n: ℕ, ∃p:ℕ, isPrime p ∧ p>n^2 ∧ p< (n+1)^2
