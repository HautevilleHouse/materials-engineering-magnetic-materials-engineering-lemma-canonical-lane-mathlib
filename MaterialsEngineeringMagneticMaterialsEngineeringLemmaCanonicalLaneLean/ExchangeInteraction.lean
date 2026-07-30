import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean

structure ExchangeInteractionPackage where
  exchangeIntegral : Prop
  heisenbergModel : Prop
  directExchange : Prop
  superexchange : Prop
  rkkYInteraction : Prop

structure ExchangeInteractionEvidence (E : ExchangeInteractionPackage) where
  exchangeIntegralClosed : E.exchangeIntegral
  heisenbergModelClosed : E.heisenbergModel
  directExchangeClosed : E.directExchange
  superexchangeClosed : E.superexchange
  rkkYInteractionClosed : E.rkkYInteraction

def ExchangeInteractionClosed (E : ExchangeInteractionPackage) : Prop :=
  E.exchangeIntegral ∧ E.heisenbergModel ∧ E.directExchange ∧ E.superexchange ∧ E.rkkYInteraction

theorem exchange_interaction_closed_from_evidence (E : ExchangeInteractionPackage)
    (Ev : ExchangeInteractionEvidence E) : ExchangeInteractionClosed E := by
  exact And.intro Ev.exchangeIntegralClosed
    (And.intro Ev.heisenbergModelClosed
      (And.intro Ev.directExchangeClosed
        (And.intro Ev.superexchangeClosed Ev.rkkYInteractionClosed)))

end MaterialsEngineeringMagneticMaterialsEngineeringLemmaCanonicalLaneLean
end HautevilleHouse