import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

structure WalrasEquilibriumPackage where
  priceVector : List ℝ
  excessDemand : List ℝ
  marketClearing : Prop
  feasibility : Prop
  existence : Prop

structure WalrasEquilibriumEvidence (W : WalrasEquilibriumPackage) where
  marketClearingClosed : W.marketClearing
  feasibilityClosed : W.feasibility
  existenceClosed : W.existence

def WalrasEquilibriumClosed (W : WalrasEquilibriumPackage) : Prop :=
  W.marketClearing ∧ W.feasibility ∧ W.existence

theorem walras_equilibrium_closed_from_evidence (W : WalrasEquilibriumPackage)
    (E : WalrasEquilibriumEvidence W) : WalrasEquilibriumClosed W := by
  exact And.intro E.marketClearingClosed (And.intro E.feasibilityClosed E.existenceClosed)

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse