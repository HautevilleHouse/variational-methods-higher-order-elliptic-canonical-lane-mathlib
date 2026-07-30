import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure PolyharmonicOperator where
  order : ℕ
  leadingCoefficient : ℝ
  ellipticityConstant : ℝ
  coercivityInequality : Prop
  spectralGap : Prop

structure PolyharmonicEvidence (P : PolyharmonicOperator) where
  coercivityInequalityClosed : P.coercivityInequality
  spectralGapClosed : P.spectralGap

def PolyharmonicClosed (P : PolyharmonicOperator) : Prop :=
  P.coercivityInequality ∧ P.spectralGap

theorem polyharmonic_closed_from_evidence (P : PolyharmonicOperator)
    (Ev : PolyharmonicEvidence P) : PolyharmonicClosed P := by
  exact And.intro Ev.coercivityInequalityClosed Ev.spectralGapClosed

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
