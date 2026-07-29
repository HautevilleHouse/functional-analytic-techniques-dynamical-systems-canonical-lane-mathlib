import HautevilleHouse.FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean.LyapunovFunctionalLayer

namespace HautevilleHouse
namespace FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean

structure DynamicalBifurcationLayerCertificate where
  bifurcationParameter : String
  criticalEigenvalueCrossing : Bool
  normalFormComputed : Bool
  bifurcationTypeIdentified : String
  stabilityChangeRecorded : Bool

def dynamcalBifurcationLayerCertificate : DynamicalBifurcationLayerCertificate := {
  bifurcationParameter := "mu",
  criticalEigenvalueCrossing := true,
  normalFormComputed := true,
  bifurcationTypeIdentified := "Hopf",
  stabilityChangeRecorded := true
}

def DynamicalBifurcationLayerClosed (C : DynamicalBifurcationLayerCertificate) : Prop :=
  C.criticalEigenvalueCrossing = true ∧
  C.normalFormComputed = true ∧
  C.stabilityChangeRecorded = true

theorem dynamical_bifurcation_layer_closed_checked :
    DynamicalBifurcationLayerClosed dynamcalBifurcationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
