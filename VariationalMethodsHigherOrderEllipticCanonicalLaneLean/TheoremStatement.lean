import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure HigherOrderEllipticAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  higherOrderEllipticProblem : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure VariationalEndgameState where
  object : HigherOrderEllipticAdmittedObject

def VariationalWitnessClosed (O : HigherOrderEllipticAdmittedObject) : Prop :=
  O.solutionExists

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
