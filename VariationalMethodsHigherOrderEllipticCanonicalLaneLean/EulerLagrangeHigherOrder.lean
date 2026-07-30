import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure EulerLagrangeHigherOrderPackage where
  lagrangianType : Type u
  functional : Type v
  criticalPointEquation : Prop
  weakSolutionDefined : Prop
  regularityResult : Prop

structure EulerLagrangeHigherOrderEvidence (E : EulerLagrangeHigherOrderPackage) where
  criticalPointEquationClosed : E.criticalPointEquation
  weakSolutionDefinedClosed : E.weakSolutionDefined
  regularityResultClosed : E.regularityResult

def EulerLagrangeHigherOrderClosed (E : EulerLagrangeHigherOrderPackage) : Prop :=
  E.criticalPointEquation ∧ E.weakSolutionDefined ∧ E.regularityResult

theorem euler_lagrange_higher_order_closed_from_evidence (E : EulerLagrangeHigherOrderPackage) (Ev : EulerLagrangeHigherOrderEvidence E) :
    EulerLagrangeHigherOrderClosed E := by
  exact And.intro Ev.criticalPointEquationClosed
    (And.intro Ev.weakSolutionDefinedClosed Ev.regularityResultClosed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse