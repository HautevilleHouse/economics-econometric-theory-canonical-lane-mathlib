import EconomicsEconometricTheoryCanonicalLaneLean.EconomicObjects

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

structure ArrowDebreuPackage (O : EconomicAdmittedObject) where
  priceSystem : O.space.commodities → ℝ
  endowment : O.space.agents → O.space.commodities → ℝ
  budgetConstraint : Prop
  utilityMaximization : Prop
  marketClearing : Prop
  equilibriumImpliesPareto : Prop

structure ArrowDebreuEvidence (O : EconomicAdmittedObject) (P : ArrowDebreuPackage O) where
  budgetConstraintClosed : P.budgetConstraint
  utilityMaximizationClosed : P.utilityMaximization
  marketClearingClosed : P.marketClearing
  equilibriumImpliesParetoClosed : P.equilibriumImpliesPareto

def ArrowDebreuClosed (O : EconomicAdmittedObject) (P : ArrowDebreuPackage O) : Prop :=
  P.budgetConstraint ∧ P.utilityMaximization ∧ P.marketClearing ∧ P.equilibriumImpliesPareto

theorem arrow_debreu_closed_from_evidence (O : EconomicAdmittedObject) (P : ArrowDebreuPackage O) (E : ArrowDebreuEvidence O P) :
    ArrowDebreuClosed O P :=
  And.intro E.budgetConstraintClosed (And.intro E.utilityMaximizationClosed (And.intro E.marketClearingClosed E.equilibriumImpliesParetoClosed))

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse