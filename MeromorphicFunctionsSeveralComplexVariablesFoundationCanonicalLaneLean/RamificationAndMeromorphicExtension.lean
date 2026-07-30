import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundation

structure RamificationPackage where
  ramificationDefined : Prop
  meromorphicExtensionClosed : Prop
  properMapping : Prop

def RamificationClosed (R : RamificationPackage) : Prop :=
  R.ramificationDefined ∧ R.meromorphicExtensionClosed ∧ R.properMapping

theorem ramification_closed (R : RamificationPackage) : RamificationClosed R := by
  exact And.intro R.ramificationDefined (And.intro R.meromorphicExtensionClosed R.properMapping)

end MeromorphicFunctionsSeveralComplexVariablesFoundation
end HautevilleHouse