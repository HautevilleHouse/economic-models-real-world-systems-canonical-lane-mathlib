import EconomicModelsRealWorldSystemsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumExists ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse