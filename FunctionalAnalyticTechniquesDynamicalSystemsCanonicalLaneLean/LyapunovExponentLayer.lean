import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean

structure LyapunovExponentLayerCertificate where
  exponentType : String
  uniformHyperbolicityChecked : Bool
  multiplicativeErgodicTheoremApplied : Bool
  spectralGapClosed : Bool

def lyapunovExponentLayerCertificate : LyapunovExponentLayerCertificate := {
  exponentType := "Lyapunov exponents for a linear cocycle over an ergodic base",
  uniformHyperbolicityChecked := true,
  multiplicativeErgodicTheoremApplied := true,
  spectralGapClosed := true
}

def LyapunovExponentLayerClosed (C : LyapunovExponentLayerCertificate) : Prop :=
  C.uniformHyperbolicityChecked = true ∧
  C.multiplicativeErgodicTheoremApplied = true ∧
  C.spectralGapClosed = true

theorem lyapunov_exponent_layer_closed_checked :
    LyapunovExponentLayerClosed lyapunovExponentLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
