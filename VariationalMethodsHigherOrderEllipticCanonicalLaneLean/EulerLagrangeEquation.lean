import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure EulerLagrangeEquation where
  functional : (ℝ → ℝ) → ℝ
  firstVariation : Prop
  weakSolutionExists : Prop
  regularity : Prop
  evidenceFirstVariation : firstVariation
  evidenceWeakSolution : weakSolutionExists
  evidenceRegularity : regularity

def EulerLagrangeClosed (E : EulerLagrangeEquation) : Prop :=
  E.firstVariation ∧ E.weakSolutionExists ∧ E.regularity

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangeEquation) :
    EulerLagrangeClosed E := by
  exact And.intro E.evidenceFirstVariation (And.intro E.evidenceWeakSolution E.evidenceRegularity)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse