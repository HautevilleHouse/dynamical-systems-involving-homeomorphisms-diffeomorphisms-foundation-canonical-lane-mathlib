import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure HomeomorphismPackage where
  source : DynamicalSpace
  target : DynamicalSpace
  homeoMap : source.carrier → target.carrier
  continuousInverse : source.topology = target.topology
  bijection : Function.Bijective homeoMap

def HomeomorphismClosed (H : HomeomorphismPackage) : Prop :=
  H.continuousInverse ∧ H.bijection

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse