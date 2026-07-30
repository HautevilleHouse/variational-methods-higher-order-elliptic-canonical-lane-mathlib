import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure SobolevSpace (k p : ℕ) where
  domain : Type u
  measure : Type v
  weakDerivativesUpToOrderK : Prop
  integrabilityP : Prop
  normDefined : Prop

def SobolevNorm (k p : ℕ) (W : SobolevSpace k p) : Prop := W.normDefined

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse
