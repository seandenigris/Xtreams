converting
appending
	^(IOAccessor openFileNamed: self direction: IOAccessor appendOnly creation: IOAccessor mayCreate) writing
		position: self fileSize;
		isPositionable: false;
		yourself