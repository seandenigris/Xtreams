implementation selection
selectImplementation
"Only implementations with positive priority are considered, the highest priority wins.
	self selectImplementation
"	
	^(self allSubclasses inject: 0 -> nil into: [ :max :next || score |
		(score := next selectionPriority) > max key ifTrue: [ score -> next ] ifFalse: [ max ] ]
	) value