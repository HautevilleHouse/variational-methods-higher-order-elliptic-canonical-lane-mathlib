import canonicalLaneMathlib.AdmissibleClass
import VariationalMethodsHigherOrderEllipticCanonicalLaneLean.SobolevSpace

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure BiharmonicOperator where
  operator : Type u
  spectralProperties : Prop
  resolventCompactness : Prop
  eigenfunctionExpansion : Prop

structure BiharmonicEvidence (B : BiharmonicOperator) where
  spectralProperties_closed : B.spectralProperties
  resolventCompactness_closed : B.resolventCompactness
  eigenfunctionExpansion_closed : B.eigenfunctionExpansion

def BiharmonicClosed (B : BiharmonicOperator) : Prop :=
  B.spectralProperties ∧ B.resolventCompactness ∧ B.eigenfunctionExpansion

theorem biharmonic_closed_from_evidence (B : BiharmonicOperator)
    (Ev : BiharmonicEvidence B) : BiharmonicClosed B := by
  exact And.intro Ev.spectralProperties_closed
    (And.intro Ev.resolventCompactness_closed Ev.eigenfunctionExpansion_closed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
