import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure OkaCoherencePackage where
  structureSheaf : Type u
  coherenceCondition : Prop
  finitePresentation : Prop
  closedUnderLocallyFree : Prop

structure OkaCoherenceEvidence (O : OkaCoherencePackage) where
  coherenceConditionClosed : O.coherenceCondition
  finitePresentationClosed : O.finitePresentation
  closedUnderLocallyFreeClosed : O.closedUnderLocallyFree

def OkaCoherenceClosed (O : OkaCoherencePackage) : Prop :=
  O.coherenceCondition ∧ O.finitePresentation ∧ O.closedUnderLocallyFree

theorem oka_coherence_closed_from_evidence (O : OkaCoherencePackage)
    (E : OkaCoherenceEvidence O) : OkaCoherenceClosed O := by
  exact And.intro E.coherenceConditionClosed
    (And.intro E.finitePresentationClosed E.closedUnderLocallyFreeClosed)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse