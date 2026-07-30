import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure RiemannMappingPackage where
  domainGeneralized : Type u
  biholomorphicMap : Type v
  ballModelExists : Prop
  automorphismGroup : Prop
  hartogsPhenomenonAccounted : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  ballModelExistsClosed : R.ballModelExists
  automorphismGroupClosed : R.automorphismGroup
  hartogsPhenomenonAccountedClosed : R.hartogsPhenomenonAccounted

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.ballModelExists ∧ R.automorphismGroup ∧ R.hartogsPhenomenonAccounted

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.ballModelExistsClosed
    (And.intro E.automorphismGroupClosed E.hartogsPhenomenonAccountedClosed)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse