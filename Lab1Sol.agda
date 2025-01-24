module Lab1Sol where

data Nat : Set where
  zero : Nat
  suc : Nat → Nat

plus : Nat → Nat → Nat
plus zero n = n
plus (suc m) n = suc (plus m n)

-- ## Problem 1

double : Nat → Nat
double zero = zero
-- use a recursive call to `double n` here:
double (suc n) = suc (suc (double n))

-- ## Problem 2

half : Nat → Nat
half zero = zero
half (suc zero) = zero
half (suc (suc n)) = suc (half n)

-- ## Problem 3

-- use three clauses for zero, suc zero, and suc (suc n).
mod2 : Nat → Nat
mod2 zero = zero
mod2 (suc zero) = suc zero
mod2 (suc (suc n)) = mod2 n

-- ## Problem 4

-- we can't represent negative numbers as Nats.
-- so we adopt the convention that m - n is 0 if m <= n.
minus : Nat → Nat → Nat
minus m zero = m
minus zero (suc n) = zero
minus (suc m) (suc n) = minus m n

-- ## Problem 5

times : Nat → Nat → Nat
times zero n = zero
times (suc m) n = plus n (times m n)

