import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure MagneticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MagneticAdmittedObject where
  space : MagneticSpace
  magneticState : String
  magnetizationVector : Prop
  exchangeInteraction : Prop
  anisotropyEnergy : Prop
  conclusion : magnetizationVector ∧ exchangeInteraction ∧ anisotropyEnergy

structure MagneticEndgameState where
  object : MagneticAdmittedObject

def MagneticWitnessClosed (O : MagneticAdmittedObject) : Prop :=
  O.magnetizationVector ∧ O.exchangeInteraction ∧ O.anisotropyEnergy

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse