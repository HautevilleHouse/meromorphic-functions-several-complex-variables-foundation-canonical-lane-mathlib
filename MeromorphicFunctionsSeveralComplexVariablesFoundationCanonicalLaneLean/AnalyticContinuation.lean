import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.SeveralComplexVariablesAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure AnalyticContinuationPackage where
  domain : Type
  overlapCondition : Prop
  uniquenessTheorem : Prop
  continuationExists : Prop
  uniquenessClosed : uniquenessTheorem
  continuationClosed : continuationExists

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  uniquenessClosed : A.uniquenessTheorem
  continuationClosed : A.continuationExists

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.uniquenessTheorem ∧ A.continuationExists

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.uniquenessClosed E.continuationClosed

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse