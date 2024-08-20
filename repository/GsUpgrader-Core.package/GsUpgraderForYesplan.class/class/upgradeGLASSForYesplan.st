convenience
upgradeGLASSForYesplan
  | gemstoneVersion gsUpgraderCacheDirPath |
  gsUpgraderCacheDirPath := '/home/yesplan/localrepositories/gsUpgrader'.
  gemstoneVersion := System stoneVersionAt: 'gsVersion'.
  (self _cacheSentinelExists: gsUpgraderCacheDirPath forVersion: gemstoneVersion)
    ifTrue: [ 
      self
        _upgradeGLASSLoadingFrom: gsUpgraderCacheDirPath
        forVersion: gemstoneVersion ]
    ifFalse: [ 
      self
        _upgradeGLASSCachingInto: gsUpgraderCacheDirPath
        forVersion: gemstoneVersion ]