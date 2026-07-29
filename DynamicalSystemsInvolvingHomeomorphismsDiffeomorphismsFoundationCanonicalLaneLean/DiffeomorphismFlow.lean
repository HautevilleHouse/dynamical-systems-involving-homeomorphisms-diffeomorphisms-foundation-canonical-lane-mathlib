import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure DiffeomorphismFlowPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] where
  timeDomain : Type v
  flowMap : timeDomain → M → M
  smoothInTime : Prop
  smoothInSpace : Prop
  groupProperty : ∀ (t s : timeDomain) (x : M), flowMap (t + s) x = flowMap t (flowMap s x)
  identityAtZero : ∀ (x : M), flowMap 0 x = x
  invertibleAtEachTime : ∀ (t : timeDomain), Function.Bijective (flowMap t)

structure DiffeomorphismFlowEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (F : DiffeomorphismFlowPackage M) where
  smoothInTimeClosed : F.smoothInTime
  smoothInSpaceClosed : F.smoothInSpace
  groupPropertyClosed : ∀ (t s : F.timeDomain) (x : M), F.flowMap (t + s) x = F.flowMap t (F.flowMap s x)
  identityAtZeroClosed : ∀ (x : M), F.flowMap 0 x = x
  invertibleAtEachTimeClosed : ∀ (t : F.timeDomain), Function.Bijective (F.flowMap t)

def DiffeomorphismFlowClosed {M : Type u} [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (F : DiffeomorphismFlowPackage M) : Prop :=
  F.smoothInTime ∧ F.smoothInSpace ∧
  (∀ (t s : F.timeDomain) (x : M), F.flowMap (t + s) x = F.flowMap t (F.flowMap s x)) ∧
  (∀ (x : M), F.flowMap 0 x = x) ∧
  (∀ (t : F.timeDomain), Function.Bijective (F.flowMap t))

theorem diffeomorphism_flow_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] [SmoothManifoldWithCorners (ModelWithCorners ℝ (EuclideanSpace ℝ (Fin 3))) M] (F : DiffeomorphismFlowPackage M) (E : DiffeomorphismFlowEvidence F) : DiffeomorphismFlowClosed F := by
  exact And.intro E.smoothInTimeClosed (And.intro E.smoothInSpaceClosed (And.intro E.groupPropertyClosed (And.intro E.identityAtZeroClosed E.invertibleAtEachTimeClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse