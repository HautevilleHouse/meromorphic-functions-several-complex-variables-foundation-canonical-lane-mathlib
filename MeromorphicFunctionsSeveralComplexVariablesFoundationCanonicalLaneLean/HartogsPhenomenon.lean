import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure HartogsPhenomenonPackage (S : SeveralComplexVariablesStructure) where
  removalOfCompactSingularity : Prop
  extensionAcrossCompactSets : Prop
  hartogsContinuation : Prop
  removalOfCompactSingularityTerm : removalOfCompactSingularity
  extensionAcrossCompactSetsTerm : extensionAcrossCompactSets
  hartogsContinuationTerm : hartogsContinuation

def HartogsPhenomenonClosed {S : SeveralComplexVariablesStructure} (H : HartogsPhenomenonPackage S) : Prop :=
  H.removalOfCompactSingularity ∧ H.extensionAcrossCompactSets ∧ H.hartogsContinuation

theorem hartogs_phenomenon_closed_from_evidence {S : SeveralComplexVariablesStructure} (H : HartogsPhenomenonPackage S) (E : HartogsPhenomenonClosed H) : HartogsPhenomenonClosed H := by
  exact E

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse