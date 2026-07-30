import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure IsingModelPackage where
  latticeType : Type u
  spinVariable : Type v
  interactionEnergy : Prop
  partitionFunction : Prop
  criticalTemperature : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  interactionEnergyClosed : I.interactionEnergy
  partitionFunctionClosed : I.partitionFunction
  criticalTemperatureClosed : I.criticalTemperature

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.interactionEnergy ∧ I.partitionFunction ∧ I.criticalTemperature

theorem ising_model_closed_from_evidence (I : IsingModelPackage)
    (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.interactionEnergyClosed
    (And.intro E.partitionFunctionClosed E.criticalTemperatureClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse