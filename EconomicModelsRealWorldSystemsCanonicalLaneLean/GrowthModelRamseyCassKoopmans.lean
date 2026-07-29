import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure RamseyCassKoopmansModel where
  capitalStock : Type u
  consumption : Type v
  productionFunction : Prop
  utilityFunction : Prop
  eulerEquation : Prop
  capitalStockTerm : capitalStock
  consumptionTerm : consumption
  productionFunctionTerm : productionFunction
  utilityFunctionTerm : utilityFunction
  eulerEquationTerm : eulerEquation

structure GrowthModelEvidence (M : RamseyCassKoopmansModel) where
  eulerEquationClosed : M.eulerEquation
  productionFunctionClosed : M.productionFunction

def GrowthModelClosed (M : RamseyCassKoopmansModel) : Prop :=
  M.eulerEquation ∧ M.productionFunction

theorem growth_model_closed_from_evidence (M : RamseyCassKoopmansModel) (E : GrowthModelEvidence M) : GrowthModelClosed M := by
  exact And.intro E.eulerEquationClosed E.productionFunctionClosed

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse