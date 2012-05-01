private-implementation selection
selectImplementationFor: algorithm
"Only implementations with positive priority are considered, the highest priority wins.
	self selectImplementation
"	
	| implementations |
	implementations := self withAllSubclasses select: [ :class | class supportsAlgorithm: algorithm ].
	implementations := implementations collect: [ :class | (class selectionPriorityFor: algorithm) -> class ].
	implementations sort: #key descending.
	implementations isEmpty ifFalse: [^implementations first value].
	self error: 'There is no suitable public key implementation for ', algorithm, ' available in this image'