import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.SeveralComplexVariablesAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyIntegralPackage where
  polydisc : Type
  boundaryCycle : Prop
  integralRepresentation : Prop
  derivativeFormula : Prop
  integralRepresentationClosed : integralRepresentation
  derivativeFormulaClosed : derivativeFormula

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  integralRepresentationClosed : C.integralRepresentation
  derivativeFormulaClosed : C.derivativeFormula

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.integralRepresentation ∧ C.derivativeFormula

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.integralRepresentationClosed E.derivativeFormulaClosed

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse