import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicFoundationPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  sheafOfMeromorphicFunctions : Type v
  meromorphicFunctionsClosed : Prop
  meromorphicFunctionsClosedTerm : meromorphicFunctionsClosed

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse