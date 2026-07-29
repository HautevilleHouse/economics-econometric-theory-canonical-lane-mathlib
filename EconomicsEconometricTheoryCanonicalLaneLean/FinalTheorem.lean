import EconomicsEconometricTheoryCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

def ConstrainedEconomicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economic_endgame (A : AdmissibleClass) :
    ConstrainedEconomicClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse