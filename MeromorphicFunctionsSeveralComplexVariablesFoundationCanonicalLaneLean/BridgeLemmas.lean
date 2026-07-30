import MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean.SeveralComplexVariablesAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean

def SeveralComplexVariablesWitnessClosed (O : SeveralComplexVariablesAdmittedObject) : Prop :=
  O.meromorphicFunction

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SeveralComplexVariablesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicFunctionsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse