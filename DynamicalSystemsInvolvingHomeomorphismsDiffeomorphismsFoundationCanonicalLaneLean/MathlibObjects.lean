import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Dynamics.Flow
import Mathlib.Dynamics.Ergodic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : contDiffOn ⊤ (fun x : carrier => x)

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  compactManifold : Prop
  homeomorphismGroup : Type
  diffeomorphismSubgroup : Type
  generator : homeomorphismGroup → space.carrier → space.carrier
  stabilityProperty : Prop
  invarianceProperty : Prop
  conclusion : stabilityProperty ∧ invarianceProperty

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.stabilityProperty ∧ O.invarianceProperty

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse