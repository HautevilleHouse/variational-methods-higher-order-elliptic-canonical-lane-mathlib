import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure VariationalAdmittedObject where
  lagrangian : Type u
  sobolevSpace : Type v
  boundaryCondition : Prop
  weakSolution : Prop
  conclusion : weakSolution

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
