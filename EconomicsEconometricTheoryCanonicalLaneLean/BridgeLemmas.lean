import EconomicsEconometricTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicConstraintClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse