import data.nat.gcd 
import data.nat.prime


def phi_Set (n:ℕ ) : set ℕ := {a:ℕ | a ≥ 1 ∧ a≤ n ∧ nat.gcd a n = 1 }

def phi_Function (n : ℕ ) : ℕ :=  finset.card phi_Set 