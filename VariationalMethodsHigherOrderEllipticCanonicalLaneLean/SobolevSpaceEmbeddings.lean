import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure SobolevSpaceEmbeddings where
  domain : Type u
  dimension : ℕ
  order : ℕ
  exponentP : ℝ
  embeddingContinuous : Prop
  embeddingCompact : Prop
  evidenceContinuous : embeddingContinuous
  evidenceCompact : embeddingCompact

def SobolevEmbeddingsClosed (S : SobolevSpaceEmbeddings) : Prop :=
  S.embeddingContinuous ∧ S.embeddingCompact

theorem sobolev_embeddings_closed_from_evidence (S : SobolevSpaceEmbeddings) :
    SobolevEmbeddingsClosed S := by
  exact And.intro S.evidenceContinuous S.evidenceCompact

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse