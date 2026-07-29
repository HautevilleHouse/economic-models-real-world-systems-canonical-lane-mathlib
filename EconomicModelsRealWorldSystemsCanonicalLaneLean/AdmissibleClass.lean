import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicAdmittedObject
  equilibriumSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : equilibriumSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object ∧ (A.equilibriumSatisfied ∨ A.remainderRecorded)

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse