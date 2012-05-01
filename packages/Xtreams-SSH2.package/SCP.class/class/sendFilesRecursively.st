defaults
sendFilesRecursively

	| block |
	^block := [ :scp :items || path |
		path := scp path.
		items do: [ :fname || file |
			(file := path ifNil: [ fname asFilename ] ifNotNil: [ path / fname ]) exists
				ifTrue: [ file isDirectory
						ifTrue: [ scp startDirectory: file tail mode: nil.
							scp path: file.
							block value: scp value: file directoryContents.
							scp endDirectory.
							scp path: path ]
						ifFalse: [ | stream |
							stream := file reading.
							[ scp file: file tail source: stream size: file fileSize mode: nil ] ensure: [ stream close ] ] ]
				ifFalse: [ scp warn: fname, ' does not exist!' ] ] ].