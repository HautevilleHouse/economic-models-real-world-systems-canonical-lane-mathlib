import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicModelsRealWorldSystemsCanonicalLaneLean

structure UtilityPreferenceStructure where
  consumptionSet : Type u
  preferenceRelation : Type v
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonsatiation : Prop
  strictConvexity : Prop
  utilityFunction : Type w
  utilityRepresentsPreferences : utilityFunction → preferenceRelation → Prop
  utilityIsContinuous : utilityFunction → Prop
  utilityIsStrictlyQuasiconcave : utilityFunction → Prop
  completenessTerm : completeness
  transitivityTerm : transitivity
  continuityTerm : continuity
  localNonsatiationTerm : localNonsatiation
  strictConvexityTerm : strictConvexity

structure UtilityRepresentationPackage (S : UtilityPreferenceStructure) where
  utilityFunctionExists : Prop
  utilityFunctionContinuous : Prop
  utilityFunctionStrictlyQuasiconcave : Prop
  representationTheorem : Prop
  demandFunctionDerived : Prop
  indirectUtilityFunction : Type v
  expenditureFunction : Type w
  hicksianDemand : Type x
  slutskyEquation : Prop
  representationProof : S.completeness → S.transitivity → S.continuity → utilityFunctionExists
  continuityProof : utilityFunctionExists → utilityFunctionContinuous
  quasiconcavityProof : S.strictConvexity → utilityFunctionStrictlyQuasiconcave
  slutskySymmetry : slutskyEquation

structure UtilityRepresentationEvidence {S : UtilityPreferenceStructure} (P : UtilityRepresentationPackage S) where
  utilityFunctionExistsClosed : P.utilityFunctionExists
  utilityFunctionContinuousClosed : P.utilityFunctionContinuous
  utilityFunctionStrictlyQuasiconcaveClosed : P.utilityFunctionStrictlyQuasiconcave
  representationTheoremClosed : P.representationTheorem
  demandFunctionDerivedClosed : P.demandFunctionDerived
  slutskyEquationClosed : P.slutskyEquation

def UtilityRepresentationClosed {S : UtilityPreferenceStructure} (P : UtilityRepresentationPackage S) : Prop :=
  P.utilityFunctionExists ∧ P.utilityFunctionContinuous ∧ P.utilityFunctionStrictlyQuasiconcave ∧ P.representationTheorem ∧ P.demandFunctionDerived ∧ P.slutskyEquation

theorem utility_representation_closed_from_evidence {S : UtilityPreferenceStructure} (P : UtilityRepresentationPackage S) (E : UtilityRepresentationEvidence P) : UtilityRepresentationClosed P := by
  exact And.intro E.utilityFunctionExistsClosed (And.intro E.utilityFunctionContinuousClosed (And.intro E.utilityFunctionStrictlyQuasiconcaveClosed (And.intro E.representationTheoremClosed (And.intro E.demandFunctionDerivedClosed E.slutskyEquationClosed))))

end EconomicModelsRealWorldSystemsCanonicalLaneLean
end HautevilleHouse