import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type
  assetPayoffs : Type
  priceSystem : Type
  stochasticDiscountFactor : Type
  lawOfOnePrice : Prop
  noArbitrage : Prop
  completeMarkets : Prop
  riskNeutralValuation : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  lawOfOnePriceClosed : A.lawOfOnePrice
  noArbitrageClosed : A.noArbitrage
  completeMarketsClosed : A.completeMarkets
  riskNeutralValuationClosed : A.riskNeutralValuation

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.lawOfOnePrice ∧ A.noArbitrage ∧ A.completeMarkets ∧ A.riskNeutralValuation

theorem asset_pricing_closed_from_evidence
    (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.lawOfOnePriceClosed
    (And.intro E.noArbitrageClosed
      (And.intro E.completeMarketsClosed E.riskNeutralValuationClosed))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse