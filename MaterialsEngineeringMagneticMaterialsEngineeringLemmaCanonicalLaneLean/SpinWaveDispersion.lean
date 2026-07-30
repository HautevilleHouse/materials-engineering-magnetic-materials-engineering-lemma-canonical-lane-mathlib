import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean.LandauLifshitzEquation

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure SpinWavePackage (L : LandauLifshitzPackage) where
  exchangeConstant : Prop
  anisotropyField : Prop
  dispersionRelation : Prop
  magnonBandStructure : Prop

structure SpinWaveEvidence {L : LandauLifshitzPackage} (S : SpinWavePackage L) where
  exchangeConstantClosed : S.exchangeConstant
  anisotropyFieldClosed : S.anisotropyField
  dispersionRelationClosed : S.dispersionRelation
  magnonBandStructureClosed : S.magnonBandStructure

def SpinWaveClosed {L : LandauLifshitzPackage} (S : SpinWavePackage L) : Prop :=
  S.exchangeConstant ∧ S.anisotropyField ∧ S.dispersionRelation ∧ S.magnonBandStructure

theorem spin_wave_closed_from_evidence {L : LandauLifshitzPackage}
    (S : SpinWavePackage L) (E : SpinWaveEvidence S) : SpinWaveClosed S := by
  exact And.intro E.exchangeConstantClosed (And.intro E.anisotropyFieldClosed
    (And.intro E.dispersionRelationClosed E.magnonBandStructureClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse