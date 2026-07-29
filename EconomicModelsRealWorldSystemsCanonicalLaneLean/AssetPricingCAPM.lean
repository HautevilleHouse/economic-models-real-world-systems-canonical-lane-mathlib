import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure CapitalAssetPricingModel where
  riskFreeRate : ℝ
  marketReturn : ℝ
  beta : Type u
  expectedReturn : Prop
  securityMarketLine : Prop
  expectedReturnTerm : expectedReturn
  securityMarketLineTerm : securityMarketLine

structure CAPMEvidence (C : CapitalAssetPricingModel) where
  expectedReturnClosed : C.expectedReturn
  securityMarketLineClosed : C.securityMarketLine

def CAPMClosed (C : CapitalAssetPricingModel) : Prop :=
  C.expectedReturn ∧ C.securityMarketLine

theorem capm_closed_from_evidence (C : CapitalAssetPricingModel) (E : CAPMEvidence C) : CAPMClosed C := by
  exact And.intro E.expectedReturnClosed E.securityMarketLineClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse