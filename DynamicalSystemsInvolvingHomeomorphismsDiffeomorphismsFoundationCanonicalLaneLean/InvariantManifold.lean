import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure InvariantManifoldPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] where
  diffeo : M → M
  submanifold : Set M
  invariantCondition : ∀ x ∈ submanifold, diffeo x ∈ submanifold
  smoothness : Prop
  dimension : ℕ
  hyperbolicStructure : Prop

structure InvariantManifoldEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (I : InvariantManifoldPackage M) where
  invariantConditionClosed : ∀ x ∈ I.submanifold, I.diffeo x ∈ I.submanifold
  smoothnessClosed : I.smoothness
  hyperbolicStructureClosed : I.hyperbolicStructure

def InvariantManifoldClosed (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (I : InvariantManifoldPackage M) : Prop :=
  I.smoothness ∧ I.hyperbolicStructure ∧ (∀ x ∈ I.submanifold, I.diffeo x ∈ I.submanifold)

theorem invariant_manifold_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (I : InvariantManifoldPackage M) (E : InvariantManifoldEvidence I) : InvariantManifoldClosed I := by
  exact And.intro (And.intro E.smoothnessClosed E.hyperbolicStructureClosed) E.invariantConditionClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse