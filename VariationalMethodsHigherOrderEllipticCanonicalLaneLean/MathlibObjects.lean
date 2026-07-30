import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure HigherOrderEllipticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HigherOrderEllipticAdmittedObject where
  space : HigherOrderEllipticSpace
  boundedDomain : Prop
  sufficientlySmoothBoundary : Prop
  sobolevEmbeddingCompact : Prop
  conclusion : sobolevEmbeddingCompact

structure HigherOrderEllipticEndgameState where
  object : HigherOrderEllipticAdmittedObject

def HigherOrderEllipticWitnessClosed (O : HigherOrderEllipticAdmittedObject) : Prop :=
  O.sobolevEmbeddingCompact

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
