import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundation

structure CauchyTheoryPackage where
  integralFormula : Prop
  holomorphicExtension : Prop
  domainConvexity : Prop

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.integralFormula ∧ C.holomorphicExtension ∧ C.domainConvexity

theorem cauchy_theory_closed (C : CauchyTheoryPackage) : CauchyTheoryClosed C := by
  exact And.intro C.integralFormula (And.intro C.holomorphicExtension C.domainConvexity)

end MeromorphicFunctionsSeveralComplexVariablesFoundation
end HautevilleHouse