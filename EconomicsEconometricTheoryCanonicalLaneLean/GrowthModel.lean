import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheory

structure GrowthModelPackage where
  capitalStock : Type u
  productionFunction : capitalStock -> ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  laborForceGrowth : ℝ
  steadyStateExists : Prop
  saddlePathStability : Prop
  optimalGrowthPath : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateExistsClosed : G.steadyStateExists
  saddlePathStabilityClosed : G.saddlePathStability
  optimalGrowthPathClosed : G.optimalGrowthPath

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyStateExists ∧ G.saddlePathStability ∧ G.optimalGrowthPath

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.steadyStateExistsClosed
    (And.intro E.saddlePathStabilityClosed E.optimalGrowthPathClosed)

end EconomicsEconometricTheory
end HautevilleHouse