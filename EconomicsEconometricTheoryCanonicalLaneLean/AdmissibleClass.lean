import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicAdmittedObject
  equilibriumSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : equilibriumSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicConstraintClosed A.object ∧ (A.equilibriumSatisfied ∨ A.remainderRecorded)

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse