import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure ShadowingLemmaPackage where
  phaseSpace : Type u
  metric : Type v
  dynamics : phaseSpace → phaseSpace
  pseudoOrbit : ℕ → phaseSpace
  shadowingOrbit : ℕ → phaseSpace
  shadowingDistance : ℝ
  epsilon : ℝ
  delta : ℝ
  shadowingProperty : Prop

structure ShadowingLemmaEvidence (S : ShadowingLemmaPackage) where
  shadowingPropertyClosed : S.shadowingProperty

def ShadowingLemmaClosed (S : ShadowingLemmaPackage) : Prop :=
  S.shadowingProperty

theorem shadowing_lemma_closed_from_evidence (S : ShadowingLemmaPackage) (E : ShadowingLemmaEvidence S) : ShadowingLemmaClosed S := by
  exact E.shadowingPropertyClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse