initialize-release
encoding: anEncoding

	| newEncoder |
	newEncoder := StreamEncoder new: anEncoding.
	(newEncoder isKindOf: UTF16StreamEncoder) ifTrue: [ newEncoder bigEndian: true ].
	self encoder: newEncoder