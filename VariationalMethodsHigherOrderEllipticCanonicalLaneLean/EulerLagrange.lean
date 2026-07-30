import canonicalLaneMathlib.AdmissibleClass
import VariationalMethodsHigherOrderEllipticCanonicalLaneLean.SobolevSpace

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure EulerLagrangeEquation where
  lagrangian : Type u
  functionalDerivative : Type v
  criticalPointsCharacterized : Prop
  regularityOfSolutions : Prop

structure EulerLagrangeEvidence (E : EulerLagrangeEquation) where
  criticalPointsCharacterized_closed : E.criticalPointsCharacterized
  regularityOfSolutions_closed : E.regularityOfSolutions

def EulerLagrangeClosed (E : EulerLagrangeEquation) : Prop :=
  E.criticalPointsCharacterized ∧ E.regularityOfSolutions

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangeEquation)
    (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.criticalPointsCharacterized_closed Ev.regularityOfSolutions_closed

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
