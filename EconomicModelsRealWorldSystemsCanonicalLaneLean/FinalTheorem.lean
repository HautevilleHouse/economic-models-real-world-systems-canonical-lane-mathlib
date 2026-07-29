import canonicalLaneMathlib.AdmissibleClass
import EconomicModelsRealWorldSystemsCanonicalLaneLean.ArrowDebreuEquilibrium
import EconomicModelsRealWorldSystemsCanonicalLaneLean.UtilityTheory
import EconomicModelsRealWorldSystemsCanonicalLaneLean.GrowthModel
import EconomicModelsRealWorldSystemsCanonicalLaneLean.AssetPricingTheory
import EconomicModelsRealWorldSystemsCanonicalLaneLean.GeneralEquilibrium

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedEconomicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economic_endgame (A : AdmissibleClass) : ConstrainedEconomicClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse