import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure CompetitiveEquilibriumAllocation where
  allocation : Type u
  prices : Type v
  paretoOptimal : Prop
  firstWelfareTheoremHolds : Prop
  allocationTerm : allocation
  pricesTerm : prices
  paretoOptimalTerm : paretoOptimal
  firstWelfareTheoremHoldsTerm : firstWelfareTheoremHolds

structure WelfareTheoremEvidence (C : CompetitiveEquilibriumAllocation) where
  paretoOptimalClosed : C.paretoOptimal
  firstWelfareTheoremClosed : C.firstWelfareTheoremHolds

def FirstWelfareTheoremClosed (C : CompetitiveEquilibriumAllocation) : Prop :=
  C.paretoOptimal ∧ C.firstWelfareTheoremHolds

theorem first_welfare_theorem_closed_from_evidence (C : CompetitiveEquilibriumAllocation) (E : WelfareTheoremEvidence C) : FirstWelfareTheoremClosed C := by
  exact And.intro E.paretoOptimalClosed E.firstWelfareTheoremClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse