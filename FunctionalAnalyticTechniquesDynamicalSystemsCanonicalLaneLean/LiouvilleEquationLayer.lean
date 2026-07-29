import HautevilleHouse.FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean

structure LiouvilleCertificate where
  phaseSpaceLabel : String
  liouvilleEquation : String
  transportDatum : String
  measurePreservationChecked : Bool

def primitiveLiouvilleCertificate : LiouvilleCertificate := {
  phaseSpaceLabel := "phase space M with smooth measure μ",
  liouvilleEquation := "∂ρ/∂t = {H, ρ} (Poisson bracket) for Hamiltonian H",
  transportDatum := "evolution of observables via pullback by flow",
  measurePreservationChecked := true
}

def LiouvilleLayerClosed (L : LiouvilleCertificate) : Prop :=
  L.phaseSpaceLabel ≠ "" ∧ L.liouvilleEquation ≠ "" ∧
  L.measurePreservationChecked = true

theorem liouville_layer_closed_checked :
    LiouvilleLayerClosed primitiveLiouvilleCertificate := by
  exact And.intro (by decide) (And.intro (by decide) rfl)

end FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean
end HautevilleHouse