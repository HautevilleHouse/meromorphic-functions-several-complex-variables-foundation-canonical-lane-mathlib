import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlibCore

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  isMeromorphicFunction : Prop
  closedSeveralComplexVariables : Prop
  analyticContinuationHolds : Prop
  conclusion : analyticContinuationHolds

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.analyticContinuationHolds

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse