marshaling
putNameList: list

	| size out |
	list isEmpty ifTrue: [ ^self string: #[] ].
	size := list inject: list size - 1 into: [ :total :name | total + name size ].
	self uint32 put: size.
	out := destination encoding: #ascii.
	list	do: [ :name | out write: name ]
		separatedBy: [ out put: $, ]