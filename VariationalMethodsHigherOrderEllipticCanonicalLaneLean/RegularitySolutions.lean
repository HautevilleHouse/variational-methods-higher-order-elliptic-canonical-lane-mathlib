import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.ExistenceMinimizers

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure RegularitySolutions {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} {B : BilinearFormEnergy L} (E : ExistenceMinimizers B) where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  higherRegularity : Prop

def RegularitySolutionsClosed {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} {B : BilinearFormEnergy L} {E : ExistenceMinimizers B} (R : RegularitySolutions E) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.higherRegularity

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
