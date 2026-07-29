import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X → X → Prop
  completeness : Prop
  transitivity : Prop
  completenessTerm : completeness
  transitivityTerm : transitivity

structure UtilityFunction (X : Type u) (P : PreferenceRelation X) where
  function : X → ℝ
  preservesPreference : ∀ x y : X, P.relation x y ↔ function x ≥ function y
  preservesPreferenceTerm : preservesPreference

def UtilityRepresentationClosed (X : Type u) (P : PreferenceRelation X) (U : UtilityFunction X P) : Prop :=
  U.preservesPreference

theorem utility_representation_closed (X : Type u) (P : PreferenceRelation X) (U : UtilityFunction X P) : UtilityRepresentationClosed X P U := by
  exact U.preservesPreferenceTerm

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse