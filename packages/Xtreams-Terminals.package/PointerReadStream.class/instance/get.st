accessing
get
	| object |
	(length isNil or: [ position < length ]) ifFalse: [ Incomplete zero raise ].
	object := source at: position.
	position := position + 1.
	^object