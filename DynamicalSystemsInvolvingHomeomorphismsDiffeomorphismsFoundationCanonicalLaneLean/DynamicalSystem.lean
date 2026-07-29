import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure DynamicalSystem where
  M : Type
  topology : TopologicalSpace M
  time : Type
  timeAdd : AddMonoid time
  flow : time → M → M
  continuous : ∀ t, Continuous (flow t)
  flowGroup : ∀ t1 t2, flow (t1 + t2) = flow t1 ∘ flow t2
  unitFlow : flow 0 = id

theorem flow_continuous_in_time (ds : DynamicalSystem) : Continuous (λ p : ds.time × ds.M => ds.flow p.1 p.2) := by
  sorry

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse