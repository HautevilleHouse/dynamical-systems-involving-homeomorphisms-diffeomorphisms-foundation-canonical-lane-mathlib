import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  closedManifold : Prop
  orientationPreserving : Prop
  diffeomorphismModel : Type
  diffeomorphismTopology : TopologicalSpace diffeomorphismModel
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.homeomorphicToModel

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse