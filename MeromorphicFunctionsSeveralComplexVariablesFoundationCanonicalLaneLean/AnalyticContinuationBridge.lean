import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicSeveralComplexVariablesFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure AnalyticContinuationPackage {F : MeromorphicFoundationPackage} where
  continuationAlongPath : Prop
  monodromyTheorem : Prop
  identityTheorem : Prop
  maximumPrinciple : Prop

structure AnalyticContinuationEvidence {F : MeromorphicFoundationPackage}
    (A : AnalyticContinuationPackage F) where
  continuationAlongPathClosed : A.continuationAlongPath
  monodromyTheoremClosed : A.monodromyTheorem
  identityTheoremClosed : A.identityTheorem
  maximumPrincipleClosed : A.maximumPrinciple

def AnalyticContinuationClosed {F : MeromorphicFoundationPackage}
    (A : AnalyticContinuationPackage F) : Prop :=
  A.continuationAlongPath ∧ A.monodromyTheorem ∧
  A.identityTheorem ∧ A.maximumPrinciple

theorem analytic_continuation_closed_from_evidence
    {F : MeromorphicFoundationPackage} (A : AnalyticContinuationPackage F)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.continuationAlongPathClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.identityTheoremClosed E.maximumPrincipleClosed))

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse