import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure SobolevEmbedding where
  domain : Type u
  exponent : ℕ
  embeddingInequality : Prop
  compactEmbedding : Prop
  criticalExponent : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbedding) where
  embeddingInequalityClosed : S.embeddingInequality
  compactEmbeddingClosed : S.compactEmbedding
  criticalExponentClosed : S.criticalExponent

def SobolevEmbeddingClosed (S : SobolevEmbedding) : Prop :=
  S.embeddingInequality ∧ S.compactEmbedding ∧ S.criticalExponent

theorem sobolev_embedding_closed_from_evidence (S : SobolevEmbedding)
    (Ev : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact And.intro Ev.embeddingInequalityClosed
    (And.intro Ev.compactEmbeddingClosed Ev.criticalExponentClosed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
