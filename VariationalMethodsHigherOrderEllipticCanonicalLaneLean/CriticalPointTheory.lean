import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalMethodsHigherOrderEllipticCanonicalLaneLean.MountainPassTheorem

namespace HautevilleHouse
namespace VariationalMethodsHigherOrderEllipticCanonicalLaneLean

structure CriticalPointPackage {S : SobolevSpacePackage} (M : MountainPassPackage S) where
  linkingStructure : Prop
  indexTheory : Prop
  multipleCriticalPoints : Prop

structure CriticalPointEvidence {S : SobolevSpacePackage} {M : MountainPassPackage S} (C : CriticalPointPackage M) where
  linkingStructureClosed : C.linkingStructure
  indexTheoryClosed : C.indexTheory
  multipleCriticalPointsClosed : C.multipleCriticalPoints

def CriticalPointClosed {S : SobolevSpacePackage} {M : MountainPassPackage S} (C : CriticalPointPackage M) : Prop :=
  C.linkingStructure ∧ C.indexTheory ∧ C.multipleCriticalPoints

theorem critical_point_closed_from_evidence
    {S : SobolevSpacePackage} {M : MountainPassPackage S} (C : CriticalPointPackage M) (E : CriticalPointEvidence C) :
    CriticalPointClosed C := by
  exact And.intro E.linkingStructureClosed
    (And.intro E.indexTheoryClosed E.multipleCriticalPointsClosed)

end VariationalMethodsHigherOrderEllipticCanonicalLaneLean
end HautevilleHouse