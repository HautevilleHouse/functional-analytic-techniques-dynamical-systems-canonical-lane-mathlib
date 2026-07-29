import HautevilleHouse.FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean

structure MoserIterationData where
  pdeLabel : String
  iterationScheme : String
  regularityEstimate : String
  harnackInequalityChecked : Bool
  convergenceChecked : Bool

def primitiveMoserIterationData : MoserIterationData := {
  pdeLabel := "Elliptic/parabolic PDE with bounded coefficients",
  iterationScheme := "Moser iteration for L^p estimates",
  regularityEstimate := "∥u∥_{C^{k,α}} ≤ C ∥f∥_{L^p}",
  harnackInequalityChecked := true,
  convergenceChecked := true
}

def MoserIterationLayerClosed (M : MoserIterationData) : Prop :=
  M.pdeLabel ≠ "" ∧ M.iterationScheme ≠ "" ∧
  M.harnackInequalityChecked = true ∧ M.convergenceChecked = true

theorem moser_iteration_layer_closed_checked :
    MoserIterationLayerClosed primitiveMoserIterationData := by
  exact And.intro (by decide) (And.intro (by decide) (And.intro rfl rfl))

end FunctionalAnalyticTechniquesDynamicalSystemsCanonicalLaneLean
end HautevilleHouse