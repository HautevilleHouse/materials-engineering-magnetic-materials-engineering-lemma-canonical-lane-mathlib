import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure MagneticHysteresisPackage where
  coercivity : Prop
  remanence : Prop
  saturationMagnetization : Prop
  loopArea : Prop
  softMagnetic : Prop
  hardMagnetic : Prop

structure MagneticHysteresisEvidence (H : MagneticHysteresisPackage) where
  coercivityClosed : H.coercivity
  remanenceClosed : H.remanence
  saturationMagnetizationClosed : H.saturationMagnetization
  loopAreaClosed : H.loopArea
  softMagneticClosed : H.softMagnetic
  hardMagneticClosed : H.hardMagnetic

def MagneticHysteresisClosed (H : MagneticHysteresisPackage) : Prop :=
  H.coercivity ∧ H.remanence ∧ H.saturationMagnetization ∧ H.loopArea ∧
  H.softMagnetic ∧ H.hardMagnetic

theorem magnetic_hysteresis_closed_from_evidence (H : MagneticHysteresisPackage)
    (E : MagneticHysteresisEvidence H) : MagneticHysteresisClosed H := by
  exact And.intro E.coercivityClosed
    (And.intro E.remanenceClosed
      (And.intro E.saturationMagnetizationClosed
        (And.intro E.loopAreaClosed
          (And.intro E.softMagneticClosed E.hardMagneticClosed))))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse