import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyRiemannPackage where
  domain : Type u
  complexStructure : Type v
  holomorphicCondition : Prop
  partialDersExist : Prop
  crEquationsSatisfied : Prop

structure CauchyRiemannEvidence (C : CauchyRiemannPackage) where
  holomorphicConditionClosed : C.holomorphicCondition
  partialDersExistClosed : C.partialDersExist
  crEquationsSatisfiedClosed : C.crEquationsSatisfied

def CauchyRiemannClosed (C : CauchyRiemannPackage) : Prop :=
  C.holomorphicCondition ∧ C.partialDersExist ∧ C.crEquationsSatisfied

theorem cauchy_riemann_closed_from_evidence (C : CauchyRiemannPackage)
    (E : CauchyRiemannEvidence C) : CauchyRiemannClosed C := by
  exact And.intro E.holomorphicConditionClosed
    (And.intro E.partialDersExistClosed E.crEquationsSatisfiedClosed)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse