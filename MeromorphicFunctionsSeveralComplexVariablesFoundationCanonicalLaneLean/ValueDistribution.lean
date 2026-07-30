import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure ValueDistributionPackage where
  targetSpace : Type u
  ramificationData : Type v
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  firstMainTheoremClosed : V.firstMainTheorem
  secondMainTheoremClosed : V.secondMainTheorem
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.firstMainTheorem ∧ V.secondMainTheorem ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.firstMainTheoremClosed
    (And.intro E.secondMainTheoremClosed E.defectRelationClosed)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse