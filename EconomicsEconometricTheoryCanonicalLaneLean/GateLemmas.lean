import EconomicsEconometricTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse