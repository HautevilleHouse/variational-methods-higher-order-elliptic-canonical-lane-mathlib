import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure HigherOrderSobolevPackage where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Type v
  sobolevNorm : ℕ → Type w
  embeddingTheorem : Prop
  compactEmbedding : Prop

structure HigherOrderSobolevEvidence (H : HigherOrderSobolevPackage) where
  embeddingTheoremClosed : H.embeddingTheorem
  compactEmbeddingClosed : H.compactEmbedding

def HigherOrderSobolevClosed (H : HigherOrderSobolevPackage) : Prop :=
  H.embeddingTheorem ∧ H.compactEmbedding

theorem higher_order_sobolev_closed_from_evidence (H : HigherOrderSobolevPackage) (E : HigherOrderSobolevEvidence H) :
    HigherOrderSobolevClosed H := by
  exact And.intro E.embeddingTheoremClosed E.compactEmbeddingClosed

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse