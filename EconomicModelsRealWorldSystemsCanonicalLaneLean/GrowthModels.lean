import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure GrowthModelsPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  consumptionChoice : Prop
  steadyStateExistence : Prop
  convergenceDynamics : Prop

structure GrowthModelsEvidence (G : GrowthModelsPackage) where
  productionFunctionClosed : G.productionFunction
  capitalAccumulationClosed : G.capitalAccumulation
  consumptionChoiceClosed : G.consumptionChoice
  steadyStateExistenceClosed : G.steadyStateExistence
  convergenceDynamicsClosed : G.convergenceDynamics

def GrowthModelsClosed (G : GrowthModelsPackage) : Prop :=
  G.productionFunction ∧ G.capitalAccumulation ∧ G.consumptionChoice ∧ G.steadyStateExistence ∧ G.convergenceDynamics

theorem growth_models_closed_from_evidence (G : GrowthModelsPackage) (E : GrowthModelsEvidence G) : GrowthModelsClosed G := by
  exact And.intro E.productionFunctionClosed (
    And.intro E.capitalAccumulationClosed (
      And.intro E.consumptionChoiceClosed (
        And.intro E.steadyStateExistenceClosed E.convergenceDynamicsClosed)))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse