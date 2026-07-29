import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure EquilibriumMarketStructure where
  priceSystem : Type u
  allocation : Type v
  marketClearing : Prop
  agentOptimality : Prop
  priceSystemTerm : priceSystem
  allocationTerm : allocation
  marketClearingTerm : marketClearing
  agentOptimalityTerm : agentOptimality

structure MarketEquilibriumEvidence (M : EquilibriumMarketStructure) where
  marketClearingClosed : M.marketClearing
  agentOptimalityClosed : M.agentOptimality

def MarketEquilibriumClosed (M : EquilibriumMarketStructure) : Prop :=
  M.marketClearing ∧ M.agentOptimality

theorem market_equilibrium_closed_from_evidence (M : EquilibriumMarketStructure) (E : MarketEquilibriumEvidence M) : MarketEquilibriumClosed M := by
  exact And.intro E.marketClearingClosed E.agentOptimalityClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse