import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure SobolevSpace where
  domain : Type u
  norm : Type v
  completeness : Prop
  derivativeEmbedding : Prop

structure SobolevEvidence (S : SobolevSpace) where
  completeness_closed : S.completeness
  derivativeEmbedding_closed : S.derivativeEmbedding

def SobolevClosed (S : SobolevSpace) : Prop :=
  S.completeness ∧ S.derivativeEmbedding

theorem sobolev_closed_from_evidence (S : SobolevSpace) (E : SobolevEvidence S) :
    SobolevClosed S := by
  exact And.intro E.completeness_closed E.derivativeEmbedding_closed

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
