import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean.LandauLifshitzEquation

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure MagneticDomainWallPackage (L : LandauLifshitzPackage) where
  wallThickness : Prop
  wallEnergy : Prop
  blochWall : Prop
  neelWall : Prop
  domainStructure : Prop

structure MagneticDomainWallEvidence {L : LandauLifshitzPackage}
    (D : MagneticDomainWallPackage L) where
  wallThicknessClosed : D.wallThickness
  wallEnergyClosed : D.wallEnergy
  blochWallClosed : D.blochWall
  neelWallClosed : D.neelWall
  domainStructureClosed : D.domainStructure

def MagneticDomainWallClosed {L : LandauLifshitzPackage}
    (D : MagneticDomainWallPackage L) : Prop :=
  D.wallThickness ∧ D.wallEnergy ∧ D.blochWall ∧ D.neelWall ∧ D.domainStructure

theorem magnetic_domain_wall_closed_from_evidence {L : LandauLifshitzPackage}
    (D : MagneticDomainWallPackage L) (E : MagneticDomainWallEvidence D) :
    MagneticDomainWallClosed D := by
  exact And.intro E.wallThicknessClosed
    (And.intro E.wallEnergyClosed
      (And.intro E.blochWallClosed
        (And.intro E.neelWallClosed E.domainStructureClosed)))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse