implementation selection
selectImplementationOf: class
"Only implementations with positive priorities are considered, the highest priority wins.
	self selectImplementationOf: Hash
"	
	^(self allSubclasses inject: 0 -> nil into: [ :max :next || score |
		(score := next selectionPriorityFor: class) > max key ifTrue: [ score -> next ] ifFalse: [ max ] ]
	) value