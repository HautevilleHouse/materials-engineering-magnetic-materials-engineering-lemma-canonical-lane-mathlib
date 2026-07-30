import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MagneticMaterialsEngineeringLemma

structure MagneticAnisotropyEnergyPackage where
  magnetocrystallineAnisotropy : Prop
  shapeAnisotropy : Prop
  magnetoelasticEnergy : Prop
  anisotropyEnergyFunctional : Type
u

structure MagneticAnisotropyEnergyEvidence (A : MagneticAnisotropyEnergyPackage) where
  magnetocrystallineAnisotropyClosed : A.magnetocrystallineAnisotropy
  shapeAnisotropyClosed : A.shapeAnisotropy
  magnetoelasticEnergyClosed : A.magnetoelasticEnergy

def MagneticAnisotropyEnergyClosed (A : MagneticAnisotropyEnergyPackage) : Prop :=
  A.magnetocrystallineAnisotropy ∧ A.shapeAnisotropy ∧ A.magnetoelasticEnergy

theorem magnetic_anisotropy_energy_closed_from_evidence (A : MagneticAnisotropyEnergyPackage)
    (E : MagneticAnisotropyEnergyEvidence A) : MagneticAnisotropyEnergyClosed A :=
  And.intro E.magnetocrystallineAnisotropyClosed
    (And.intro E.shapeAnisotropyClosed E.magnetoelasticEnergyClosed)

end MagneticMaterialsEngineeringLemma
end HautevilleHouse