import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure StructuralStabilityPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] where
  dynamics : M → M
  perturbationClass : Type v
  topologicalConjugacy : M → M
  conjugacyHomeomorphism : Prop
  stabilityCondition : ∀ (pert : perturbationClass), ∃ (h : M → M), ConjugacyCondition dynamics pert h
  
structure ConjugacyCondition (f : M → M) (pert : Type v) (h : M → M) : Prop where
  homeomorphism : Prop
  conjugacyEquation : ∀ x, h (f x) = pert x (h x)

structure StructuralStabilityEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (S : StructuralStabilityPackage M) where
  conjugacyHomeomorphismClosed : S.conjugacyHomeomorphism
  stabilityConditionClosed : S.stabilityCondition

def StructuralStabilityClosed (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (S : StructuralStabilityPackage M) : Prop :=
  S.conjugacyHomeomorphism ∧ S.stabilityCondition

theorem structural_stability_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (S : StructuralStabilityPackage M) (E : StructuralStabilityEvidence S) : StructuralStabilityClosed S := by
  exact And.intro E.conjugacyHomeomorphismClosed E.stabilityConditionClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse