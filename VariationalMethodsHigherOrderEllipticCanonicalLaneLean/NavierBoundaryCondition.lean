import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure NavierBoundaryCondition where
  domain : Type u
  boundaryOperator : Type v
  traceTheorem : Prop
  liftingTheorem : Prop
  compatibilityCondition : Prop

structure NavierBoundaryEvidence (N : NavierBoundaryCondition) where
  traceTheoremClosed : N.traceTheorem
  liftingTheoremClosed : N.liftingTheorem
  compatibilityConditionClosed : N.compatibilityCondition

def NavierBoundaryClosed (N : NavierBoundaryCondition) : Prop :=
  N.traceTheorem ∧ N.liftingTheorem ∧ N.compatibilityCondition

theorem navier_boundary_closed_from_evidence (N : NavierBoundaryCondition)
    (Ev : NavierBoundaryEvidence N) : NavierBoundaryClosed N := by
  exact And.intro Ev.traceTheoremClosed
    (And.intro Ev.liftingTheoremClosed Ev.compatibilityConditionClosed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
