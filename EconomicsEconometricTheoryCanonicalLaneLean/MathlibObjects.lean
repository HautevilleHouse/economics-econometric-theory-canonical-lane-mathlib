import EconomicsEconometricTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsEconometricTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ArrowDebreuEconomy where
  agents : Nat
  goods : Nat
  endowments : Vector ℝ goods
  preferences : Nat → (Vector ℝ goods) → Prop

def ArrowDebreuEquilibrium (E : ArrowDebreuEconomy) : Prop :=
  ∀ agent, ∃ bundle, E.preferences agent bundle ∧ bundle ≤ E.endowments

structure EconomicsAdmittedObject where
  economy : ArrowDebreuEconomy
  equilibriumExists : ArrowDebreuEquilibrium economy
  conclusion : equilibriumExists

structure EconomicsEndgameState where
  object : EconomicsAdmittedObject

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsEconometricTheoryCanonicalLaneLean
end HautevilleHouse
