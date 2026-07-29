import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure ArrowDebreuCommoditySpace where
  commodityTypes : Nat
  priceSystem : Type u
  consumptionSet : Type v
  preferenceRelation : Type w
  initialEndowment : Type x
  excessDemandFunction : Type y
  walrasLaw : Prop
  convexPreferences : Prop
  continuousPreferences : Prop
  strictlyConvexPreferences : Prop
  locallyNonsatiated : Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  strictConvexity : Prop
  walrasLawTerm : walrasLaw
  convexPreferencesTerm : convexPreferences
  continuousPreferencesTerm : continuousPreferences
  strictlyConvexPreferencesTerm : strictlyConvexPreferences
  locallyNonsatiatedTerm : locallyNonsatiated
  completenessTerm : completeness
  transitivityTerm : transitivity
  continuityTerm : continuity
  strictConvexityTerm : strictConvexity

structure ArrowDebreuEquilibriumPackage (C : ArrowDebreuCommoditySpace) where
  equilibriumPriceExists : Prop
  competitiveEquilibriumAllocation : Prop
  paretoOptimalAllocation : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  existenceFromContinuityAndConvexity : C.continuousPreferences → C.locallyNonsatiated → C.strictlyConvexPreferences → equilibriumPriceExists
  equilibriumParetoRelation : equilibriumPriceExists → paretoOptimalAllocation
  welfareTheoremBridge : firstWelfareTheorem ∧ secondWelfareTheorem

structure ArrowDebreuEquilibriumEvidence {C : ArrowDebreuCommoditySpace} (P : ArrowDebreuEquilibriumPackage C) where
  equilibriumPriceExistsClosed : P.equilibriumPriceExists
  competitiveEquilibriumAllocationClosed : P.competitiveEquilibriumAllocation
  paretoOptimalAllocationClosed : P.paretoOptimalAllocation
  firstWelfareTheoremClosed : P.firstWelfareTheorem
  secondWelfareTheoremClosed : P.secondWelfareTheorem

def ArrowDebreuEquilibriumClosed {C : ArrowDebreuCommoditySpace} (P : ArrowDebreuEquilibriumPackage C) : Prop :=
  P.equilibriumPriceExists ∧ P.competitiveEquilibriumAllocation ∧ P.paretoOptimalAllocation ∧ P.firstWelfareTheorem ∧ P.secondWelfareTheorem

theorem arrow_debreu_equilibrium_closed_from_evidence {C : ArrowDebreuCommoditySpace} (P : ArrowDebreuEquilibriumPackage C) (E : ArrowDebreuEquilibriumEvidence P) : ArrowDebreuEquilibriumClosed P := by
  exact And.intro E.equilibriumPriceExistsClosed (And.intro E.competitiveEquilibriumAllocationClosed (And.intro E.paretoOptimalAllocationClosed (And.intro E.firstWelfareTheoremClosed E.secondWelfareTheoremClosed)))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse