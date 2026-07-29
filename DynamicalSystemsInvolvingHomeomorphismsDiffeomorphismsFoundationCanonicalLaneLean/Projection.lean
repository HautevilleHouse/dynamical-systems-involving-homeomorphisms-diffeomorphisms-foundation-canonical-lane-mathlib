import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dynamicalProjection : Projection DynamicalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dynamical_projection_idempotent (x : DynamicalEndgameState) :
    dynamicalProjection.toFun (dynamicalProjection.toFun x) = dynamicalProjection.toFun x := by
  exact dynamicalProjection.idempotent x

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse