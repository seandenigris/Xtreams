defaults
ensureDirectoryExists: dir

	dir exists
		ifTrue: [ dir isDirectory ifFalse: [ SCPWarning raiseErrorString: dir asString, ' exists and is not a directory!' ] ] 
		ifFalse: [
			self ensureDirectoryExists: dir directory.
			dir makeDirectory ]