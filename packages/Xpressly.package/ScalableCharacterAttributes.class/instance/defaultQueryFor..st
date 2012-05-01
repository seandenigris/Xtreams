private
defaultQueryFor: aFontPolicy

	"(aFontPolicy isNil or:[(first := policyCache first) == aFontPolicy])
		ifFalse:
			[(first == 0 or: [first == nil])
				ifFalse: [self invalidateQueryCache].
			policyCache at: 1 put: aFontPolicy]."
	scaledQuery notNil ifTrue: [^scaledQuery].
	scaledQuery := (super defaultQueryFor: aFontPolicy) copy.
	scaledQuery  pixelSize: (
		scaledQuery pixelSize
			ifNil: [ Locale current preferredPixelSizeFor: aFontPolicy]
			ifNotNil: [ :pixels | (pixels * self scale) rounded ]).
	^scaledQuery