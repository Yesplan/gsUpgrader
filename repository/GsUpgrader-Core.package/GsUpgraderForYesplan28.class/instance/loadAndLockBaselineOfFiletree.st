overrides
loadAndLockBaselineOfFiletree
	self metacelloClass new
		baseline:'FileTree';
		repository: self filetreeRepositoryDescription;
		load;
		lock