defaults
receiveFilesRecursively

	^[ :dir :fname :stream :size :mode :times |
		fname
			ifNil: [ dir directory "it's directory end"  ]
			ifNotNil: [ | path |
				path := dir / fname.
				self ensureDirectoryExists: dir.
				stream
					ifNil: [ "it's directory start"
						self ensureDirectoryExists: path.
						path ]
					ifNotNil: [ "it's a file"
						path writing write: stream; close ] ] ]