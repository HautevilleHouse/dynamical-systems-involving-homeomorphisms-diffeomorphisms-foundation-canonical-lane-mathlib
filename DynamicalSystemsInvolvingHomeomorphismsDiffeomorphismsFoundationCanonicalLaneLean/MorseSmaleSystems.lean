import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure MorseSmaleSystemsPackage where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  smoothStructure : Prop
  dynamics : phaseSpace → phaseSpace
  hyperbolicFixedPoints : Prop
  transversalIntersections : Prop
  stableManifolds : Prop
  unstableManifolds : Prop
  noCycles : Prop

structure MorseSmaleSystemsEvidence (M : MorseSmaleSystemsPackage) where
  hyperbolicFixedPointsClosed : M.hyperbolicFixedPoints
  transversalIntersectionsClosed : M.transversalIntersections
  stableManifoldsClosed : M.stableManifolds
  unstableManifoldsClosed : M.unstableManifolds
  noCyclesClosed : M.noCycles

def MorseSmaleSystemsClosed (M : MorseSmaleSystemsPackage) : Prop :=
  M.hyperbolicFixedPoints ∧ M.transversalIntersections ∧ M.stableManifolds ∧ M.unstableManifolds ∧ M.noCycles

theorem morse_smale_systems_closed_from_evidence (M : MorseSmaleSystemsPackage) (E : MorseSmaleSystemsEvidence M) : MorseSmaleSystemsClosed M := by
  exact And.intro E.hyperbolicFixedPointsClosed (And.intro E.transversalIntersectionsClosed (And.intro E.stableManifoldsClosed (And.intro E.unstableManifoldsClosed E.noCyclesClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse