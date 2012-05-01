instance creation
algorithm: type size: bitSize
"Generates a new key of specified size in bits and specified algorithm type. Generation may take some time, how long usually depends on requested key size. Smaller keys are generated faster, but provide smaller security margin.
	type	<String | Symbol> algorithm name
	bitSize	<Integer> the 
	^<PrivateKey>
"
	| algorithm class selector |
	algorithm := type asSymbol.
	class :=
		self == PrivateKey
			ifTrue: [ self selectImplementationFor: algorithm ]
			ifFalse: [ self ].
	selector := class action: #size2key for: algorithm.
	^class new perform: selector with: bitSize