import Mathlib.Algebra.Group.Basic
import Mathlib.Tactic

theorem step_one (a b : Nat) : a + 0 = a := by
  simp

theorem step_two (a b : Nat) : a + b = b + a := by
  omega

theorem main_theorem (a b : Nat) : a + b + 0 = b + a := by
  have h1 := step_one (a + b) b
  have h2 := step_two a b
  linarith
