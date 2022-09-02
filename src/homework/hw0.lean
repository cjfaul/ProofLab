import ..prooflab
import lectures.lec0_intro

/-! # Homework 0 
Homework must be done individually.
Replace the placeholders `sorry` with your proofs. 
refl, exact, rw
-/

set_option pp.beta true
set_option pp.generalized_field_notation false

namespace PROOFS 



/-! ## Question 1  -/

example (x y : ℕ) : 
  y + 0 = y :=
begin
  refl, -- 0 added to a number is that number
end




/-! ## Question 2 -/

example (m n : ℕ) (h₁ : n = 4) (h₂: m^2 = n) : 
  n = m^2 := 
begin
  rw h₂, -- substitute m^2 with n, left with n=n, then applies refl
end




/-! ## Question 3 -/

example (x y : ℕ) (h₁ : y = x) (h₂ : y - 1 = 0) : 
 5^(y - 1) = (2 + 3)^(x - 1) :=
begin
  rw h₁, -- replaces y with x in target, simplifies 2+3 to 5, then left with 5^(x-1) = 5^(x-1), then applies refl
end




/-! ## Question 4 -/

example (x y : ℕ) (h₁ : y = x) (h₂ : x - 1 = 0) : 
 5^(y - 1) = 5^0 :=
begin
  rw h₁, -- replaces y with x in target, left with 5^(x-1) = 5^0
  rw h₂, -- replaces x-1 in target with 0, left with 5^0 = 5^0, applies refl
end




/-! ## Question 5 -/

example (a b c x y z : ℕ) (h₁ : 26 = x^2 + y^2 + z^2) 
(h₂ : x^2 = 2 * a) (h₃ : y^2 = b) (h₄ : z^2 = 1) : 
2 * a + b + 1 - z = 26 - z := 
begin
  rw h₂ at h₁, -- replaces x^2 with 2a in h₁
  rw h₃ at h₁, -- replaces y^2 with b in h₁
  rw h₄ at h₁, -- replaces z^2 with 1 in h₁
  rw h₁, -- replaces 2a + b + 1 in target with 26, left with 26-z = 26-z, applies refl
end 




end PROOFS