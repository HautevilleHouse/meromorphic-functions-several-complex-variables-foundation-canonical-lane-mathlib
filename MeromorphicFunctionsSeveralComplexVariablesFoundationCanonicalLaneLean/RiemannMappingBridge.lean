import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicSeveralComplexVariablesFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure RiemannMappingPackage {F : MeromorphicFoundationPackage} where
  conformalMapping : Prop
  simplyConnectedDomain : Prop
  biholomorphicMap : Prop
  boundaryCorrespondence : Prop

structure RiemannMappingEvidence {F : MeromorphicFoundationPackage}
    (R : RiemannMappingPackage F) where
  conformalMappingClosed : R.conformalMapping
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  biholomorphicMapClosed : R.biholomorphicMap
  boundaryCorrespondenceClosed : R.boundaryCorrespondence

def RiemannMappingClosed {F : MeromorphicFoundationPackage}
    (R : RiemannMappingPackage F) : Prop :=
  R.conformalMapping ∧ R.simplyConnectedDomain ∧
  R.biholomorphicMap ∧ R.boundaryCorrespondence

theorem riemann_mapping_closed_from_evidence
    {F : MeromorphicFoundationPackage} (R : RiemannMappingPackage F)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.conformalMappingClosed
    (And.intro E.simplyConnectedDomainClosed
      (And.intro E.biholomorphicMapClosed E.boundaryCorrespondenceClosed))

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse