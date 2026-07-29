import canonicalLaneMathlib.AdmissibleClass
import EconomicModelsRealWorldSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumExists

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.equilibriumExists

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse