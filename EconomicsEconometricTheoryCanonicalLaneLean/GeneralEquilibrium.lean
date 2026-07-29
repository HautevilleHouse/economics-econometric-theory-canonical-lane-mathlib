import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricTheory

structure GeneralEquilibriumPackage where
  agentTypes : Type u
  commoditySpace : Type v
  priceSpace : Type w
  excessDemandFunction : priceSpace -> commoditySpace
  walrasLaw : Prop
  continuity : Prop
  boundaryCondition : Prop
  equilibriumExists : Prop

structure GeneralEquilibriumEvidence (G : GeneralEquilibriumPackage) where
  walrasLawClosed : G.walrasLaw
  continuityClosed : G.continuity
  boundaryConditionClosed : G.boundaryCondition
  equilibriumExistsClosed : G.equilibriumExists

def GeneralEquilibriumClosed (G : GeneralEquilibriumPackage) : Prop :=
  G.walrasLaw ∧ G.continuity ∧ G.boundaryCondition ∧ G.equilibriumExists

theorem general_equilibrium_closed_from_evidence (G : GeneralEquilibriumPackage) (E : GeneralEquilibriumEvidence G) :
    GeneralEquilibriumClosed G := by
  exact And.intro E.walrasLawClosed
    (And.intro E.continuityClosed
      (And.intro E.boundaryConditionClosed E.equilibriumExistsClosed))

end EconomicsEconometricTheory
end HautevilleHouse