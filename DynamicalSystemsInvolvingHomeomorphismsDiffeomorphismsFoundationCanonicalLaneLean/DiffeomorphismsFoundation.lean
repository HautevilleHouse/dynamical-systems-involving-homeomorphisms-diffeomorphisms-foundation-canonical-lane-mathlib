import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismPackage {H : HomeomorphismPackage} where
  smooth : Prop
  inverseSmooth : Prop
  smoothTerm : smooth
  inverseSmoothTerm : inverseSmooth

structure DiffeomorphismsEvidence {H : HomeomorphismPackage}
    (D : DiffeomorphismPackage H) where
  smoothClosed : D.smooth
  inverseSmoothClosed : D.inverseSmooth

def DiffeomorphismClosed {H : HomeomorphismPackage}
    (D : DiffeomorphismPackage H) : Prop :=
  D.smooth ∧ D.inverseSmooth

theorem diffeomorphism_closed_from_evidence {H : HomeomorphismPackage}
    (D : DiffeomorphismPackage H) (E : DiffeomorphismsEvidence D) :
    DiffeomorphismClosed D := by
  exact And.intro E.smoothClosed E.inverseSmoothClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse
