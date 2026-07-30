import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure MagneticAdmittedObject where
  material : Type
  magnetization : Prop
  closureCondition : Prop
  conclusion : closureCondition
  spinDynamics : Prop

def MagneticWitnessClosed (O : MagneticAdmittedObject) : Prop :=
  O.closureCondition

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse