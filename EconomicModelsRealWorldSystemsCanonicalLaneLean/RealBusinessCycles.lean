import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure RealBusinessCyclesPackage where
  productivityShocks : Type u
  householdOptimization : Prop
  firmOptimization : Prop
  marketClearing : Prop
  calibrationMatch : Prop

structure RealBusinessCyclesEvidence (R : RealBusinessCyclesPackage) where
  productivityShocksClosed : R.productivityShocks
  householdOptimizationClosed : R.householdOptimization
  firmOptimizationClosed : R.firmOptimization
  marketClearingClosed : R.marketClearing
  calibrationMatchClosed : R.calibrationMatch

def RealBusinessCyclesClosed (R : RealBusinessCyclesPackage) : Prop :=
  R.productivityShocks ∧ R.householdOptimization ∧ R.firmOptimization ∧ R.marketClearing ∧ R.calibrationMatch

theorem real_business_cycles_closed_from_evidence (R : RealBusinessCyclesPackage) (E : RealBusinessCyclesEvidence R) : RealBusinessCyclesClosed R := by
  exact And.intro E.productivityShocksClosed (
    And.intro E.householdOptimizationClosed (
      And.intro E.firmOptimizationClosed (
        And.intro E.marketClearingClosed E.calibrationMatchClosed)))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse