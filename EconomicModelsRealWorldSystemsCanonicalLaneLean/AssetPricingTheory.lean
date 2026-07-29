import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Probability.Kernel

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure StateSpace where
  states : Type
  probabilityMeasure : Type
  isProbabilitySpace : Prop
  probabilitySpaceTerm : isProbabilitySpace

structure Asset (S : StateSpace) where
  payoff : S.states → ℝ
  price : ℝ
  discountFactor : ℝ
  payoffMeasurable : Prop
  priceNonnegative : price ≥ 0
  discountFactorNonnegative : discountFactor ≥ 0
  payoffMeasurableTerm : payoffMeasurable

structure StochasticDiscountFactor (S : StateSpace) where
  sdf : S.states → ℝ
  isPositive : Prop
  hasExpectationOne : Prop
  positiveTerm : isPositive
  expectationOneTerm : hasExpectationOne

structure AssetPricingBubble (S : StateSpace) (A : Asset S) (M : StochasticDiscountFactor S) where
  fundamentalValue : ℝ
  bubbleComponent : ℝ
  priceDecomposition : A.price = fundamentalValue + bubbleComponent
  fundamentalValueNonnegative : fundamentalValue ≥ 0
  bubbleComponentNonnegative : bubbleComponent ≥ 0
  decompositionTerm : priceDecomposition

def AssetPricingClosed {S : StateSpace} {A : Asset S} {M : StochasticDiscountFactor S}
    (B : AssetPricingBubble S A M) : Prop :=
  B.fundamentalValue ≥ 0 ∧ B.bubbleComponent ≥ 0

theorem asset_pricing_closed_from_evidence {S : StateSpace} {A : Asset S} {M : StochasticDiscountFactor S}
    (B : AssetPricingBubble S A M) : AssetPricingClosed B :=
  And.intro B.fundamentalValueNonnegative B.bubbleComponentNonnegative

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse