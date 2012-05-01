private-implementation selection
selectionPriorityFor: algorithm
"Priorities are computed by collecting all methods with a priority pragma. Each such method is evaluated and expected to return a boolean which determines if the associated priority value applies or not. Then all the applicable values are tallied up to produce the final priority value.
	(self allSubclasses collect: [ :c | c selectionPriority -> c ]) sort: [ :a :b | a key > b key ]
"
	^(	(Pragma allNamed: #priority: in: self class)
				select: [ :p | self perform: p selector with: algorithm ]
	) inject: 0 into: [ :t :p | t + p arguments first ]