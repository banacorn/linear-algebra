--
-- open import Relation.Binary using (Rel; Setoid; IsEquivalence)
-- open import Level as Lvl using ()

module Structures
  {G F : Set}
  (_≈G_ : G → G → Set)
  (_≈F_ : F → F → Set)
  where

-- import M as M’
open import Algebra.Structures _≈G_
  using (IsAbelianGroup)

open import Algebra.Structures _≈F_
  using (IsCommutativeRing)

open import Relation.Nullary

open import Algebra.FunctionProperties _≈F_ using (Inverse)

record IsField (+ * : F → F → F) (𝟘 𝟙 : F) (- : F → F) (⁻¹ : (a : F) → ¬ (a ≈F 𝟘) → F) : Set where
  field
    isCommutativeRing : IsCommutativeRing + * - 𝟘 𝟙
    *-inverse : Inverse {!   !} {!  ⁻¹  !} {!   !}




record IsVectorSpace

  (+ᵍ : G → G → G)
  (𝟘ᵍ : G)
  (-ᵍ : G → G)

  : Set where

  -- module G =
  field
    G-isAbelianGroup : IsAbelianGroup +ᵍ 𝟘ᵍ -ᵍ
    F-isField : {! Rel  !}
      -- IsAbelianGroup {! +G  !} {!   !} {!   !} {!   !}
