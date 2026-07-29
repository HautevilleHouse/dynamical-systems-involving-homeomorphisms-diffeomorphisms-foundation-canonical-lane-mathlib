import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure SmoothConjugacy where
  system1 : DiffeomorphismFlow
  system2 : DiffeomorphismFlow
  conjugacy : system1.phaseSpace → system2.phaseSpace
  diffeomorphism : DifferentiableOn ℝ conjugacy (Set.univ)
  conjugacyProperty : ∀ t x, conjugacy (system1.flowMap (t, x)) = system2.flowMap (t, conjugacy x)

def SmoothConjugacyClosed (C : SmoothConjugacy) : Prop :=
  C.diffeomorphism ∧ C.conjugacyProperty

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse