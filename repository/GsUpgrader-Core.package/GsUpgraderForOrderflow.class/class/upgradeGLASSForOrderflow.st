as yet unclassified
upgradeGLASSForOrderflow
  | gemstoneVersion gsUpgraderCacheDirPath |
  gsUpgraderCacheDirPath := '/home/vagrant/localrepositories/gsUpgrader'.
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