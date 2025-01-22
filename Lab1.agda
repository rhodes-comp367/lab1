module Lab1 where

data Nat : Set where
  zero : Nat
  suc : Nat → Nat

plus : Nat → Nat → Nat
plus zero n = n
plus (suc m) n = suc (plus m n)

-- ## Problem 1

double : Nat → Nat
double zero = ?
-- use a recursive call to `double n` here:
double (suc n) = ?

-- ## Problem 2

half : Nat → Nat
half zero = ?
half (suc zero) = ?
half (suc (suc n)) = ?

-- ## Problem 3

-- use three clauses for zero, suc zero, and suc (suc n).
mod2 : Nat → Nat
mod2 = ?

-- ## Problem 4

minus : Nat → Nat → Nat
minus = ?

-- ## Problem 5

times : Nat → Nat → Nat
times = ?

