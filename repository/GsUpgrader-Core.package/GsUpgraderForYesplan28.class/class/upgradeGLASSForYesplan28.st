as yet unclassified
upgradeGLASSForYesplan28
  | gemstoneVersion gsUpgraderCacheDirPath |
  gsUpgraderCacheDirPath := '/home/yesplan/localrepositories/gsUpgrader'.
  gemstoneVersion := '3.4.5'.
  (self _cacheSentinelExists: gsUpgraderCacheDirPath forVersion: gemstoneVersion)
    ifTrue: [ 
      self
        _upgradeGLASSLoadingFrom: gsUpgraderCacheDirPath
        forVersion: gemstoneVersion ]
    ifFalse: [ 
      self
        _upgradeGLASSCachingInto: gsUpgraderCacheDirPath
        forVersion: gemstoneVersion ]