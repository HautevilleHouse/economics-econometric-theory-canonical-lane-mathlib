import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

structure EconomicSpace where
  agents : Type
  commodities : Type
  preferences : agents → commodities → Prop

structure EconomicAdmittedObject where
  space : EconomicSpace
  equilibriumExists : Prop
  paretoOptimal : Prop
  conclusion : equilibriumExists ∧ paretoOptimal

def EconomicConstraintClosed (O : EconomicAdmittedObject) : Prop :=
  O.conclusion

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse