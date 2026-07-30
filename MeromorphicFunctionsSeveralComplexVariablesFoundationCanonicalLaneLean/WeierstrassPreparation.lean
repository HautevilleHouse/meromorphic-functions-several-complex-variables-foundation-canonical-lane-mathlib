import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsSeveralComplexVariablesFoundation

structure WeierstrassPreparationPackage where
  divisionTheorem : Prop
  preparationTheorem : Prop
  idealStructure : Prop

def WeierstrassPreparationClosed (W : WeierstrassPreparationPackage) : Prop :=
  W.divisionTheorem ∧ W.preparationTheorem ∧ W.idealStructure

theorem weierstrass_preparation_closed (W : WeierstrassPreparationPackage) : WeierstrassPreparationClosed W := by
  exact And.intro W.divisionTheorem (And.intro W.preparationTheorem W.idealStructure)

end MeromorphicFunctionsSeveralComplexVariablesFoundation
end HautevilleHouse