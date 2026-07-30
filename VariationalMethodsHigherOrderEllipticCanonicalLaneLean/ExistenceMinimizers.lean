import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.BilinearFormEnergy

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure ExistenceMinimizers {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} (B : BilinearFormEnergy L) where
  lowerSemicontinuity : Prop
  coercivityEnsuresMinimizer : Prop
  uniqueMinimizer : Prop

def ExistenceMinimizersClosed {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} {B : BilinearFormEnergy L} (E : ExistenceMinimizers B) : Prop :=
  E.lowerSemicontinuity ∧ E.coercivityEnsuresMinimizer ∧ E.uniqueMinimizer

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
