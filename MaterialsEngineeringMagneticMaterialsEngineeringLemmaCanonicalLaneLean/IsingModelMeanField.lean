import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MagneticMaterialsEngineeringLemma

structure IsingModelMeanFieldPackage where
  latticeSites : Type u
  spinVariables : Type v
  exchangeCoupling : Prop
  meanFieldApproximation : Prop
  criticalTemperature : Prop

structure IsingModelMeanFieldEvidence (I : IsingModelMeanFieldPackage) where
  exchangeCouplingClosed : I.exchangeCoupling
  meanFieldApproximationClosed : I.meanFieldApproximation
  criticalTemperatureClosed : I.criticalTemperature

def IsingModelMeanFieldClosed (I : IsingModelMeanFieldPackage) : Prop :=
  I.exchangeCoupling ∧ I.meanFieldApproximation ∧ I.criticalTemperature

theorem ising_model_mean_field_closed_from_evidence (I : IsingModelMeanFieldPackage)
    (E : IsingModelMeanFieldEvidence I) : IsingModelMeanFieldClosed I :=
  And.intro E.exchangeCouplingClosed
    (And.intro E.meanFieldApproximationClosed E.criticalTemperatureClosed)

end MagneticMaterialsEngineeringLemma
end HautevilleHouse