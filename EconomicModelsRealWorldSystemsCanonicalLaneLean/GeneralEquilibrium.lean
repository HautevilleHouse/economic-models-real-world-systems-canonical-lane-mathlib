import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure GeneralEquilibriumPackage where
  agentSet : Type
  commoditySpace : Type
  preferences : Type
  endowments : Type
  priceSystem : Type
  individualOptimality : Prop
  marketClearing : Prop
  walrasLaw : Prop
  paretoOptimality : Prop

structure GeneralEquilibriumEvidence (G : GeneralEquilibriumPackage) where
  individualOptimalityClosed : G.individualOptimality
  marketClearingClosed : G.marketClearing
  walrasLawClosed : G.walrasLaw
  paretoOptimalityClosed : G.paretoOptimality

def GeneralEquilibriumClosed (G : GeneralEquilibriumPackage) : Prop :=
  G.individualOptimality ∧ G.marketClearing ∧ G.walrasLaw ∧ G.paretoOptimality

theorem general_equilibrium_closed_from_evidence
    (G : GeneralEquilibriumPackage) (E : GeneralEquilibriumEvidence G) :
    GeneralEquilibriumClosed G := by
  exact And.intro E.individualOptimalityClosed
    (And.intro E.marketClearingClosed
      (And.intro E.walrasLawClosed E.paretoOptimalityClosed))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse