import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure FinancialMarketModel where
  securities : Type u
  states : Type v
  payoffMatrix : Type w
  priceVector : Type x
  arbitrageFreeCondition : Prop
  riskNeutralMeasure : Prop
  arbitrageFreeConditionTerm : arbitrageFreeCondition
  riskNeutralMeasureTerm : riskNeutralMeasure

structure NoArbitrageEvidence (M : FinancialMarketModel) where
  arbitrageFreeClosed : M.arbitrageFreeCondition
  riskNeutralMeasureClosed : M.riskNeutralMeasure

def NoArbitrageClosed (M : FinancialMarketModel) : Prop :=
  M.arbitrageFreeCondition ∧ M.riskNeutralMeasure

theorem no_arbitrage_closed_from_evidence (M : FinancialMarketModel) (E : NoArbitrageEvidence M) : NoArbitrageClosed M := by
  exact And.intro E.arbitrageFreeClosed E.riskNeutralMeasureClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse