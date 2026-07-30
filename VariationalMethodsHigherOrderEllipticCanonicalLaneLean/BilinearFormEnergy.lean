import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.HigherOrderEllipticOperators

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure BilinearFormEnergy {k p : ℕ} {W : SobolevSpace k p} (L : HigherOrderEllipticOperator W) where
  bilinearFormDefined : Prop
  continuity : Prop
  coercivityEstimate : Prop
  symmetricPart : Prop

def BilinearFormEnergyClosed {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} (B : BilinearFormEnergy L) : Prop :=
  B.bilinearFormDefined ∧ B.continuity ∧ B.coercivityEstimate ∧ B.symmetricPart

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
