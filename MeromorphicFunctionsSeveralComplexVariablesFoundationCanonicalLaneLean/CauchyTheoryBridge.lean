import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicSeveralComplexVariablesFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyTheoryPackage {F : MeromorphicFoundationPackage} where
  integralFormula : Prop
  residueTheorem : Prop
  cauchyEstimates : Prop
  cauchyRiemannEquations : Prop

structure CauchyTheoryEvidence {F : MeromorphicFoundationPackage} (C : CauchyTheoryPackage F) where
  integralFormulaClosed : C.integralFormula
  residueTheoremClosed : C.residueTheorem
  cauchyEstimatesClosed : C.cauchyEstimates
  cauchyRiemannEquationsClosed : C.cauchyRiemannEquations

def CauchyTheoryClosed {F : MeromorphicFoundationPackage} (C : CauchyTheoryPackage F) : Prop :=
  C.integralFormula ∧ C.residueTheorem ∧ C.cauchyEstimates ∧ C.cauchyRiemannEquations

theorem cauchy_theory_closed_from_evidence
    {F : MeromorphicFoundationPackage} (C : CauchyTheoryPackage F)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.integralFormulaClosed
    (And.intro E.residueTheoremClosed
      (And.intro E.cauchyEstimatesClosed E.cauchyRiemannEquationsClosed))

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse