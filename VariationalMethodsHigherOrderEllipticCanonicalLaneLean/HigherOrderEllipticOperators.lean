import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure HigherOrderEllipticOperator {k p : ℕ} (W : SobolevSpace k p) where
  order : ℕ
  coefficientsSmooth : Prop
  ellipticityCondition : Prop
  coercivity : Prop

def EllipticCoercivity {k p : ℕ} {W : SobolevSpace k p} (L : HigherOrderEllipticOperator W) : Prop :=
  L.ellipticityCondition ∧ L.coercivity

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
