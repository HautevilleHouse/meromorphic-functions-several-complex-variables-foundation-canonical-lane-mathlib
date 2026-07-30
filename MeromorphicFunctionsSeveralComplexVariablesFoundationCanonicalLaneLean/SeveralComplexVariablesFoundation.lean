import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.RiemannMapping

/-!
# Several Complex Variables Foundation Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure SeveralComplexVariablesFoundationPackage where
  complexManifold : Type u
  dimension : ℕ
  hullOfHolomorphyClosed : Prop
  domainsOfHolomorphyCharacterized : Prop
  pseudoconvexEquivalence : Prop

structure SeveralComplexVariablesEvidence (F : SeveralComplexVariablesFoundationPackage) where
  hullOfHolomorphyClosedClosed : F.hullOfHolomorphyClosed
  domainsOfHolomorphyCharacterizedClosed : F.domainsOfHolomorphyCharacterized
  pseudoconvexEquivalenceClosed : F.pseudoconvexEquivalence

def SeveralComplexVariablesFoundationClosed (F : SeveralComplexVariablesFoundationPackage) : Prop :=
  F.hullOfHolomorphyClosed ∧ F.domainsOfHolomorphyCharacterized ∧ F.pseudoconvexEquivalence

theorem several_complex_variables_foundation_closed_from_evidence
    (F : SeveralComplexVariablesFoundationPackage) (E : SeveralComplexVariablesEvidence F) :
    SeveralComplexVariablesFoundationClosed F := by
  exact And.intro E.hullOfHolomorphyClosedClosed
    (And.intro E.domainsOfHolomorphyCharacterizedClosed E.pseudoconvexEquivalenceClosed)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse