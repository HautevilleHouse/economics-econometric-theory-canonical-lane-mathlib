import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

structure UtilityMaximizationPackage where
  preferenceRelation : Type u
  utilityFunction : Type u
  continuity : Prop
  strictMonotonicity : Prop
  convexity : Prop
  existence : utilityFunction → Prop

structure UtilityMaximizationEvidence (U : UtilityMaximizationPackage) where
  continuityClosed : U.continuity
  strictMonotonicityClosed : U.strictMonotonicity
  convexityClosed : U.convexity
  existenceClosed : ∀ u : U.utilityFunction, U.existence u

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.continuity ∧ U.strictMonotonicity ∧ U.convexity ∧ (∀ u : U.utilityFunction, U.existence u)

theorem utility_maximization_closed_from_evidence (U : UtilityMaximizationPackage)
    (E : UtilityMaximizationEvidence U) : UtilityMaximizationClosed U := by
  exact And.intro E.continuityClosed (And.intro E.strictMonotonicityClosed
    (And.intro E.convexityClosed E.existenceClosed))

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse