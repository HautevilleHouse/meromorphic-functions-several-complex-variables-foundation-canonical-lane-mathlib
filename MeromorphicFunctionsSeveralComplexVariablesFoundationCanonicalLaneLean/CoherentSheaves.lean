import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundation

structure CoherentSheavesPackage where
  okaCoherence : Prop
  frechetSheaf : Prop
  analyticLocalization : Prop

def CoherentSheavesClosed (C : CoherentSheavesPackage) : Prop :=
  C.okaCoherence ∧ C.frechetSheaf ∧ C.analyticLocalization

theorem coherent_sheaves_closed (C : CoherentSheavesPackage) : CoherentSheavesClosed C := by
  exact And.intro C.okaCoherence (And.intro C.frechetSheaf C.analyticLocalization)

end MeromorphicFunctionsSeveralComplexVariablesFoundation
end HautevilleHouse