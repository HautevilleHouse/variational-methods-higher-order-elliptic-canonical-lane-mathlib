import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure EulerLagrangeMultiplier where
  lagrangian : Type u
  multiplier : Type v
  weakFormulation : Prop
  strongFormulation : Prop
  existenceCondition : Prop
  regularityCondition : Prop

structure EulerLagrangeEvidence (E : EulerLagrangeMultiplier) where
  weakFormulationClosed : E.weakFormulation
  strongFormulationClosed : E.strongFormulation
  existenceConditionClosed : E.existenceCondition
  regularityConditionClosed : E.regularityCondition

def EulerLagrangeClosed (E : EulerLagrangeMultiplier) : Prop :=
  E.weakFormulation ∧ E.strongFormulation ∧ E.existenceCondition ∧ E.regularityCondition

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangeMultiplier)
    (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.weakFormulationClosed
    (And.intro Ev.strongFormulationClosed
      (And.intro Ev.existenceConditionClosed Ev.regularityConditionClosed))

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
