.. Rudimentary article template

TITLE
=====

Introduction
------------
- Description goes here

- Link to a source

Informal statement
------------------
  
- informal statement

preformally: :: 

#check nat
#eval(1)
#eval(1+1)
constants x y : ℕ  
variable f : ℕ → ℕ 
variable g : ℕ → ℕ → ℕ 
variable s : string 
#check (λ x:ℕ, x+1)
#reduce (λ x:ℕ, x+1) 
#eval (λ x:ℕ, x+1)5
#eval(λ f:ℕ, f+1) 6 
#check list  
variables α β : Type 
variables (a1 a2:α)(b:β)(n:ℕ) 
variable fo:ℕ → α  
#eval 3-2*4+9 
#eval(3-2*4+9:ℤ ) 
variable p:α × β 
definition foo:ℕ := 3  
def bar:ℕ := 2+2 
def add3: ℕ → ℕ :=(λ x,x+3)  
def add23(x y :ℕ ):ℕ :=x+y+3 
#check add23 
open nat 
def hm (x:ℕ): ℕ → ℕ 
| 0 := 1
| 1 := x
| (succ n):=(hm n)*x    
#check hm 
#eval(1)
#reduce hm 2 1
def fib : ℕ → ℕ 
|0:= 1
|1:= 1
|(n+2):= fib(n+1)+fib(n)
#eval(fib 10)

- preformal statement

Formal statement
----------------

- formal statement (in Lean source)
