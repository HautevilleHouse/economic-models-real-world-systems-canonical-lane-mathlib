import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure ArrowDebreuEconomy where
  commoditySpace : Type u
  prices : Type v
  endowments : Type w
  preferences : Type x
  marketClearing : Prop
  paretoOptimality : Prop
  marketClearingTerm : marketClearing
  paretoOptimalityTerm : paretoOptimality

structure GeneralEquilibriumEvidence (E : ArrowDebreuEconomy) where
  marketClearingClosed : E.marketClearing
  paretoOptimalityClosed : E.paretoOptimality

def GeneralEquilibriumClosed (E : ArrowDebreuEconomy) : Prop :=
  E.marketClearing ∧ E.paretoOptimality

theorem general_equilibrium_closed_from_evidence (E : ArrowDebreuEconomy) (Ev : GeneralEquilibriumEvidence E) : GeneralEquilibriumClosed E := by
  exact And.intro Ev.marketClearingClosed Ev.paretoOptimalityClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse