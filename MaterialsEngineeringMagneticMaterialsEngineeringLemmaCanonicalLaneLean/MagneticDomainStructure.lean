import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure MagneticDomainPackage where
  domainWallEnergy : Prop
  strayFieldEnergy : Prop
  anisotropyEnergy : Prop
  domainPattern : Prop
  equilibriumCondition : Prop

structure MagneticDomainEvidence (M : MagneticDomainPackage) where
  domainWallEnergyClosed : M.domainWallEnergy
  strayFieldEnergyClosed : M.strayFieldEnergy
  anisotropyEnergyClosed : M.anisotropyEnergy
  domainPatternClosed : M.domainPattern
  equilibriumConditionClosed : M.equilibriumCondition

def MagneticDomainClosed (M : MagneticDomainPackage) : Prop :=
  M.domainWallEnergy ∧ M.strayFieldEnergy ∧ M.anisotropyEnergy ∧ M.domainPattern ∧ M.equilibriumCondition

theorem magnetic_domain_closed_from_evidence (M : MagneticDomainPackage) (E : MagneticDomainEvidence M) :
    MagneticDomainClosed M := by
  exact And.intro E.domainWallEnergyClosed
    (And.intro E.strayFieldEnergyClosed
      (And.intro E.anisotropyEnergyClosed
        (And.intro E.domainPatternClosed E.equilibriumConditionClosed)))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse