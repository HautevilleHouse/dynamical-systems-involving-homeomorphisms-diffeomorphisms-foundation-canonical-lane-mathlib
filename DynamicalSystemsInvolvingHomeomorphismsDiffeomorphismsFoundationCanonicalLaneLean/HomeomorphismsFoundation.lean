import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure HomeomorphismPackage where
  source : Type u
  target : Type v
  mapping : source → target
  continuous : Prop
  inverseMapping : target → source
  inverseContinuous : Prop
  bijective : Prop
  continuousTerm : continuous
  inverseContinuousTerm : inverseContinuous
  bijectiveTerm : bijective

structure HomeomorphismsEvidence (H : HomeomorphismPackage) where
  continuousClosed : H.continuous
  inverseContinuousClosed : H.inverseContinuous
  bijectiveClosed : H.bijective

def HomeomorphismClosed (H : HomeomorphismPackage) : Prop :=
  H.continuous ∧ H.inverseContinuous ∧ H.bijective

theorem homeomorphism_closed_from_evidence (H : HomeomorphismPackage)
    (E : HomeomorphismsEvidence H) : HomeomorphismClosed H := by
  exact And.intro E.continuousClosed
    (And.intro E.inverseContinuousClosed E.bijectiveClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
