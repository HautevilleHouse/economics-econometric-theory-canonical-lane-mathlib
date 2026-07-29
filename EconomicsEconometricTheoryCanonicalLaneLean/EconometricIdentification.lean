import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheory

structure EconometricIdentificationPackage where
  parameterSpace : Type u
  momentConditions : List (parameterSpace -> ℝ)
  orthogonalityConditions : Prop
  rankCondition : Prop
  orderCondition : Prop
  globalIdentification : Prop
  localIdentification : Prop

structure EconometricIdentificationEvidence (E : EconometricIdentificationPackage) where
  orthogonalityConditionsClosed : E.orthogonalityConditions
  rankConditionClosed : E.rankCondition
  orderConditionClosed : E.orderCondition
  globalIdentificationClosed : E.globalIdentification
  localIdentificationClosed : E.localIdentification

def EconometricIdentificationClosed (E : EconometricIdentificationPackage) : Prop :=
  E.orthogonalityConditions ∧ E.rankCondition ∧ E.orderCondition ∧ E.globalIdentification ∧ E.localIdentification

theorem econometric_identification_closed_from_evidence (E : EconometricIdentificationPackage) (Ev : EconometricIdentificationEvidence E) :
    EconometricIdentificationClosed E := by
  exact And.intro Ev.orthogonalityConditionsClosed
    (And.intro Ev.rankConditionClosed
      (And.intro Ev.orderConditionClosed
        (And.intro Ev.globalIdentificationClosed Ev.localIdentificationClosed)))

end EconomicsEconometricTheory
end HautevilleHouse