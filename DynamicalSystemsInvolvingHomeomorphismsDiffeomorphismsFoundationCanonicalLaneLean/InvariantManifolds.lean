import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure InvariantManifoldsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dynamics : manifold → manifold
  invariantSubmanifold : Type v
  submanifoldProperty : Prop
  invarianceUnderDynamics : Prop

structure InvariantManifoldsEvidence (I : InvariantManifoldsPackage) where
  submanifoldPropertyClosed : I.submanifoldProperty
  invarianceUnderDynamicsClosed : I.invarianceUnderDynamics

def InvariantManifoldsClosed (I : InvariantManifoldsPackage) : Prop :=
  I.submanifoldProperty ∧ I.invarianceUnderDynamics

theorem invariant_manifolds_closed_from_evidence (I : InvariantManifoldsPackage) (E : InvariantManifoldsEvidence I) : InvariantManifoldsClosed I := by
  exact And.intro E.submanifoldPropertyClosed E.invarianceUnderDynamicsClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse