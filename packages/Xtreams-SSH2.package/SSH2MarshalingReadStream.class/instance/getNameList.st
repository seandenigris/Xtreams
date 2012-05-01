marshaling
getNameList

	| list |
	list := ((self string encoding: #ascii) ending: $,) slicing collect: #rest.
	^list = #('')
		ifTrue: [ #() ]
		ifFalse: [ list ]