import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.AnalyticContinuation

/-!
# Meromorphic Function Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicFunctionTheoryPackage {F : SeveralComplexVariablesFoundationPackage}
    {A : AnalyticContinuationPackage F} where
  meromorphicFunctionsDefinedOnComplexManifold : Prop
  localParametrizationExists : Prop
  polesCharacterizedBySheaf : Prop
  quotientOfHolomorphicFunctions : Prop
  weierstrassPreparationTheoremsHold : Prop

structure MeromorphicFunctionTheoryEvidence {F : SeveralComplexVariablesFoundationPackage}
    {A : AnalyticContinuationPackage F}
    (M : MeromorphicFunctionTheoryPackage F A) where
  meromorphicFunctionsDefinedOnComplexManifoldClosed : M.meromorphicFunctionsDefinedOnComplexManifold
  localParametrizationExistsClosed : M.localParametrizationExists
  polesCharacterizedBySheafClosed : M.polesCharacterizedBySheaf
  quotientOfHolomorphicFunctionsClosed : M.quotientOfHolomorphicFunctions
  weierstrassPreparationTheoremsHoldClosed : M.weierstrassPreparationTheoremsHold

def MeromorphicFunctionTheoryClosed {F : SeveralComplexVariablesFoundationPackage}
    {A : AnalyticContinuationPackage F}
    (M : MeromorphicFunctionTheoryPackage F A) : Prop :=
  M.meromorphicFunctionsDefinedOnComplexManifold ∧ M.localParametrizationExists ∧
  M.polesCharacterizedBySheaf ∧ M.quotientOfHolomorphicFunctions ∧
  M.weierstrassPreparationTheoremsHold

theorem meromorphic_function_theory_closed_from_evidence
    {F : SeveralComplexVariablesFoundationPackage}
    {A : AnalyticContinuationPackage F}
    (M : MeromorphicFunctionTheoryPackage F A) (E : MeromorphicFunctionTheoryEvidence M) :
    MeromorphicFunctionTheoryClosed M := by
  exact And.intro E.meromorphicFunctionsDefinedOnComplexManifoldClosed
    (And.intro E.localParametrizationExistsClosed
      (And.intro E.polesCharacterizedBySheafClosed
        (And.intro E.quotientOfHolomorphicFunctionsClosed E.weierstrassPreparationTheoremsHoldClosed)))

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse