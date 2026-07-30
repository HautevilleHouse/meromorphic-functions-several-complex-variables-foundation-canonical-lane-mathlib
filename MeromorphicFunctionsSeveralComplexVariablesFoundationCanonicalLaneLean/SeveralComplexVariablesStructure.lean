import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure SeveralComplexVariablesStructure where
  dimension : Nat
  polydisc : PolydiscModel
  domainOfHolomorphy : Prop
  pseudoconvexBoundary : Prop
  domainOfHolomorphyTerm : domainOfHolomorphy
  pseudoconvexBoundaryTerm : pseudoconvexBoundary

structure PolydiscModel where
  radii : List Real
  centerPoint : C^n

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse