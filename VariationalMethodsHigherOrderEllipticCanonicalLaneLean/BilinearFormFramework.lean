import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure BilinearFormFramework where
  HilbertSpace : Type u
  innerProduct : HilbertSpace → HilbertSpace → ℝ
  continuity : Prop
  coercivity : Prop
  symmetric : Prop
  evidenceContinuity : continuity
  evidenceCoercivity : coercivity
  evidenceSymmetric : symmetric

def BilinearFormClosed (F : BilinearFormFramework) : Prop :=
  F.continuity ∧ F.coercivity ∧ F.symmetric

theorem bilinear_form_closed_from_evidence (F : BilinearFormFramework) :
    BilinearFormClosed F := by
  exact And.intro F.evidenceContinuity (And.intro F.evidenceCoercivity F.evidenceSymmetric)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse