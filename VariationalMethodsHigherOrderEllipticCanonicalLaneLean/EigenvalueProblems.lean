import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.RegularitySolutions

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure EigenvalueProblems {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} {B : BilinearFormEnergy L} {E : ExistenceMinimizers B} (R : RegularitySolutions E) where
  compactResolvent : Prop
  discreteSpectrum : Prop
  eigenfunctionRegularity : Prop

def EigenvalueProblemsClosed {k p : ℕ} {W : SobolevSpace k p} {L : HigherOrderEllipticOperator W} {B : BilinearFormEnergy L} {E : ExistenceMinimizers B} {R : RegularitySolutions E} (P : EigenvalueProblems R) : Prop :=
  P.compactResolvent ∧ P.discreteSpectrum ∧ P.eigenfunctionRegularity

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
