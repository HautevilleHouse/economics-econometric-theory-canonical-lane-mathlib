import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheory

structure UtilityTheoryPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet -> consumptionSet -> Prop
  utilityRepresentation : consumptionSet -> ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  strictMonotonicity : Prop
  utilityExists : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  strictMonotonicityClosed : U.strictMonotonicity
  utilityExistsClosed : U.utilityExists

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.strictMonotonicity ∧ U.utilityExists

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage) (E : UtilityTheoryEvidence U) :
    UtilityTheoryClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed
        (And.intro E.strictMonotonicityClosed E.utilityExistsClosed)))

end EconomicsEconometricTheory
end HautevilleHouse