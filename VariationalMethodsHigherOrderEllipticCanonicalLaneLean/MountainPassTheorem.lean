import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure MountainPassGeometry where
  functional : Type u
  criticalPoint : Type v
  mountainPassCondition : Prop
  compactnessCondition : Prop
  deformationLemma : Prop

structure MountainPassEvidence (M : MountainPassGeometry) where
  mountainPassConditionClosed : M.mountainPassCondition
  compactnessConditionClosed : M.compactnessCondition
  deformationLemmaClosed : M.deformationLemma

def MountainPassClosed (M : MountainPassGeometry) : Prop :=
  M.mountainPassCondition ∧ M.compactnessCondition ∧ M.deformationLemma

theorem mountain_pass_closed_from_evidence (M : MountainPassGeometry)
    (Ev : MountainPassEvidence M) : MountainPassClosed M := by
  exact And.intro Ev.mountainPassConditionClosed
    (And.intro Ev.compactnessConditionClosed Ev.deformationLemmaClosed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
