compiling
refreshPresentations
	| instances |
	self == Presentation ifTrue: [^self].
	instances := self allInstances select: [:each | each isOpen].
	instances do: [:presentation |
		[presentation refresh] uiEventFor: presentation builder window
		]