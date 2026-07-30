import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type u
  spinVariable : Type v
  exchangeInteraction : Prop
  externalField : Prop
  hamiltonianDefined : Prop
  partitionFunction : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  exchangeInteractionClosed : I.exchangeInteraction
  externalFieldClosed : I.externalField
  hamiltonianDefinedClosed : I.hamiltonianDefined
  partitionFunctionClosed : I.partitionFunction

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.exchangeInteraction ∧ I.externalField ∧ I.hamiltonianDefined ∧ I.partitionFunction

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) :
    IsingModelClosed I := by
  exact And.intro E.exchangeInteractionClosed
    (And.intro E.externalFieldClosed
      (And.intro E.hamiltonianDefinedClosed E.partitionFunctionClosed))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse