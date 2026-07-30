import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MagneticMaterialsEngineeringLemma

structure StonerWohlfarthModelPackage where
  singleDomainParticle : Prop
  uniaxialAnisotropy : Prop
  appliedFieldAxis : Prop
  magnetizationReversal : Prop
  hysteresisLoop : Prop

structure StonerWohlfarthModelEvidence (S : StonerWohlfarthModelPackage) where
  singleDomainParticleClosed : S.singleDomainParticle
  uniaxialAnisotropyClosed : S.uniaxialAnisotropy
  appliedFieldAxisClosed : S.appliedFieldAxis
  magnetizationReversalClosed : S.magnetizationReversal
  hysteresisLoopClosed : S.hysteresisLoop

def StonerWohlfarthModelClosed (S : StonerWohlfarthModelPackage) : Prop :=
  S.singleDomainParticle ∧ S.uniaxialAnisotropy ∧ S.appliedFieldAxis ∧ S.magnetizationReversal ∧ S.hysteresisLoop

theorem stoner_wohlfarth_model_closed_from_evidence (S : StonerWohlfarthModelPackage)
    (E : StonerWohlfarthModelEvidence S) : StonerWohlfarthModelClosed S :=
  And.intro E.singleDomainParticleClosed
    (And.intro E.uniaxialAnisotropyClosed
      (And.intro E.appliedFieldAxisClosed
        (And.intro E.magnetizationReversalClosed E.hysteresisLoopClosed)))

end MagneticMaterialsEngineeringLemma
end HautevilleHouse