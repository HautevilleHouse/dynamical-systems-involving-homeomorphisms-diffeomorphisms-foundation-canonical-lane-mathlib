import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.GroupTheory.Group

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure HomeomorphismGroup where
  M : Type
  topology : TopologicalSpace M
  group : Type
  groupMultiplication : group → group → group
  groupUnit : group
  groupInverse : group → group
  groupAssoc : ∀ a b c : group, groupMultiplication (groupMultiplication a b) c = groupMultiplication a (groupMultiplication b c)
  groupUnitLeft : ∀ a : group, groupMultiplication groupUnit a = a
  groupUnitRight : ∀ a : group, groupMultiplication a groupUnit = a
  groupInverseLeft : ∀ a : group, groupMultiplication (groupInverse a) a = groupUnit
  groupInverseRight : ∀ a : group, groupMultiplication a (groupInverse a) = groupUnit

theorem homeomorphism_group_is_group (G : HomeomorphismGroup) : Group G.group := by
  refine { mul := G.groupMultiplication, one := G.groupUnit, inv := G.groupInverse, mul_assoc := G.groupAssoc, one_mul := G.groupUnitLeft, mul_one := G.groupUnitRight, mul_left_inv := G.groupInverseLeft, mul_right_inv := G.groupInverseRight }

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse