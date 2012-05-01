configuration
configureUnmarshal: reading
	encoding := ((reading encoding: #ascii) ending: Character cr) rest asSymbol.
	^false