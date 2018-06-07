#check nat
#check nat → nat
#check λ x : nat , x
#check Type 


def identity : ∀ x :ℕ , ℕ := λ  x : ℕ , x

#check identity 

def identity' (x :ℕ) : ℕ   := x

#check identity'

theorem my_first_theorem (x:ℕ ):
    identity x =x:= rfl 

#print and.left
#print and.right
#print and.intro

theorem and_is_comulative {p q: Prop}:
    ∀ (h: p ∧ q), q ∧ p :=
λ h: p ∧ q, and.intro 
    (and.right h)
    (and.left h)

set_option pp.all true
#print and_is_comulative

theorem T:
    1 = 0 ∧ 2 < 3 → 
    2 < 3 ∧ 1 = 0 :=
λ h, and_is_comulative h 

#print T

