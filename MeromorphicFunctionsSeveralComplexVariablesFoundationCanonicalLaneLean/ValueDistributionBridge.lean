import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicSeveralComplexVariablesFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure ValueDistributionPackage {F : MeromorphicFoundationPackage} where
  nevanlinnaCharacteristic : Prop
  defectRelation : Prop
  secondMainTheorem : Prop
  juliaExceptionalSet : Prop

structure ValueDistributionEvidence {F : MeromorphicFoundationPackage}
    (V : ValueDistributionPackage F) where
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  defectRelationClosed : V.defectRelation
  secondMainTheoremClosed : V.secondMainTheorem
  juliaExceptionalSetClosed : V.juliaExceptionalSet

def ValueDistributionClosed {F : MeromorphicFoundationPackage}
    (V : ValueDistributionPackage F) : Prop :=
  V.nevanlinnaCharacteristic ∧ V.defectRelation ∧
  V.secondMainTheorem ∧ V.juliaExceptionalSet

theorem value_distribution_closed_from_evidence
    {F : MeromorphicFoundationPackage} (V : ValueDistributionPackage F)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicClosed
    (And.intro E.defectRelationClosed
      (And.intro E.secondMainTheoremClosed E.juliaExceptionalSetClosed))

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse