#print notation + -- xem hàm (hoặc nhấn F12)

set_option pp.implicit true
set_option pp.notation false

example (n m : ℕ) (i j: ℤ):
n +m = m+n ∧ i+j=j+i:=
_

#check nat.has_add

namespace HN

class monoid (α : Type):=
(op: α → α → α)
(neu  {}: α)
#print monoid

example 
{α :Type} [monoid α] {a b : α}:
monoid.op a b = monoid.op b a:=
_
--[] to find instance of class

def monoid_nat : monoid ℕ :=
monoid.mk (+)  0
-- ((+), 0)
-- {op:= (+), neu  := 0}

instance : monoid ℕ:=
monoid_nat

example {a b : ℕ}:
monoid.op a b = monoid.op b a:=
_
--nat.add_comm a b 


class group (α : Type) extends
monoid α :=
(inv: α → α)

example
{α : Type} [group α ] {a: α}:
monoid.op a (group.inv a) = 
monoid.neu  := 
_

instance group_int : group ℤ :=
{ op  := int.add,
 neu := int.zero,
 inv := int.neg }

class comm_monoid (α :Type) extends
monoid α :=
(comm: ∀a b, op a b = op b a)

class comm_group (α : Type) extends
group α :=
(comm : ∀a b, op a b = op b a)

instance (α : Type) [comm_group α]: comm_monoid α :=
{ op := monoid.op,
    neu:= monoid.neu,
    comm:= comm_group.comm}


/-
    add_semigroup   -> add_
        |               |
        V               V
    monoid          -> comm_monoid
        |               |                         
        V               V
    group           -> comm group
-/
end HN

