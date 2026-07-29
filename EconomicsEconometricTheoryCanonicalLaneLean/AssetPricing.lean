import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheory

structure AssetPricingPackage where
  stateSpace : Type u
  payoffMatrix : stateSpace -> ℝ
  discountFactor : stateSpace -> ℝ
  priceVector : ℝ
  noArbitrage : Prop
  riskNeutralValuation : Prop
  completeMarkets : Prop
  equilibriumPrices : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  riskNeutralValuationClosed : A.riskNeutralValuation
  completeMarketsClosed : A.completeMarkets
  equilibriumPricesClosed : A.equilibriumPrices

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.riskNeutralValuation ∧ A.completeMarkets ∧ A.equilibriumPrices

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed
    (And.intro E.riskNeutralValuationClosed
      (And.intro E.completeMarketsClosed E.equilibriumPricesClosed))

end EconomicsEconometricTheory
end HautevilleHouse