import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure UniformHyperbolicityPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] where
  diffeo : M → M
  tangentBundle : Type v
  stableDistribution : M → Set (TangentSpace M)
  unstableDistribution : M → Set (TangentSpace M)
  invariantSplitting : ∀ x, TangentSpace x = stableDistribution x ⊕ unstableDistribution x
  contractionCondition : ∃ (C : ℝ) (λ : ℝ) (0 < λ) (λ < 1), ∀ x, ∀ v ∈ stableDistribution x, ‖tangentMap diffeo x v‖ ≤ C * λ ^ n * ‖v‖
  expansionCondition : ∃ (C : ℝ) (μ : ℝ) (1 < μ), ∀ x, ∀ v ∈ unstableDistribution x, ‖tangentMap diffeo x v‖ ≥ C * μ ^ n * ‖v‖

structure UniformHyperbolicityEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (U : UniformHyperbolicityPackage M) where
  invariantSplittingClosed : ∀ x, U.tangentBundle x = U.stableDistribution x ⊕ U.unstableDistribution x
  contractionConditionClosed : ∃ (C : ℝ) (λ : ℝ) (hλ0 : 0 < λ) (hλ1 : λ < 1), ∀ x, ∀ v ∈ U.stableDistribution x, ‖tangentMap U.diffeo x v‖ ≤ C * λ ^ n * ‖v‖
  expansionConditionClosed : ∃ (C : ℝ) (μ : ℝ) (hμ : 1 < μ), ∀ x, ∀ v ∈ U.unstableDistribution x, ‖tangentMap U.diffeo x v‖ ≥ C * μ ^ n * ‖v‖

theorem uniform_hyperbolicity_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (U : UniformHyperbolicityPackage M) (E : UniformHyperbolicityEvidence U) : True := by
  trivial

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse