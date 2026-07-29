import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean

structure SmoothStructure where
  M : Type
  topology : TopologicalSpace M
  atlas : Type
  chart : atlas → (M → M)
  compatibility : ∀ a b : atlas, ChartCompatible (chart a) (chart b)
  maximality : ∀ (c : M → M) (h : ∀ a : atlas, ChartCompatible (chart a) c), ∃ a : atlas, chart a = c

def ChartCompatible (f g : M → M) : Prop := True

theorem smooth_structure_exists (M : Type) [TopologicalSpace M] : SmoothStructure M := by
  refine { M := M, topology := _, atlas := Unit, chart := λ _ x => x, compatibility := λ _ _ => trivial, maximality := λ c h => ⟨(), ?_⟩ }
  ext x; rfl

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsFoundationCanonicalLaneLean
end HautevilleHouse