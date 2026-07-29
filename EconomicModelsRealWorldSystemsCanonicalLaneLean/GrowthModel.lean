import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure SolowGrowthPackage where
  productionFunction : Type
  capitalAccumulation : Type
  savingsRate : Prop
  depreciationRate : Prop
  laborGrowthRate : Prop
  steadyStateExistence : Prop
  convergenceToSteadyState : Prop

structure SolowGrowthEvidence (S : SolowGrowthPackage) where
  savingsRateClosed : S.savingsRate
  depreciationRateClosed : S.depreciationRate
  laborGrowthRateClosed : S.laborGrowthRate
  steadyStateExistenceClosed : S.steadyStateExistence
  convergenceToSteadyStateClosed : S.convergenceToSteadyState

def SolowGrowthClosed (S : SolowGrowthPackage) : Prop :=
  S.savingsRate ∧ S.depreciationRate ∧ S.laborGrowthRate ∧
  S.steadyStateExistence ∧ S.convergenceToSteadyState

theorem solow_growth_closed_from_evidence
    (S : SolowGrowthPackage) (E : SolowGrowthEvidence S) :
    SolowGrowthClosed S := by
  exact And.intro E.savingsRateClosed
    (And.intro E.depreciationRateClosed
      (And.intro E.laborGrowthRateClosed
        (And.intro E.steadyStateExistenceClosed
          E.convergenceToSteadyStateClosed)))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse