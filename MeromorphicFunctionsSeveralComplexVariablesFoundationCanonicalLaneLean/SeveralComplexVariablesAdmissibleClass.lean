import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

structure SeveralComplexVariablesAdmittedObject where
  domainType : Type
  domainTopology : TopologicalSpace domainType
  complexStructure : Prop
  meromorphicFunction : Prop
  codimensionOneSet : Prop
  conclusion : meromorphicFunction

structure AdmissibleClass where
  object : SeveralComplexVariablesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SeveralComplexVariablesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse