instance creation
algorithm: type parameters: parameters
"Generates a new key for specified algorithm type from provided parameters. This mode of creation does not apply to all algorithm types. The format of the parameters is algorithm specific. Generation may take some time, how long usually depends on requested key size (implied by the provided parameters). Smaller keys are generated faster, but provide smaller security margin.
	type		<String | Symbol> algorithm name
	parameters	<Array> parameters for the new key (usually large positive integers)
	^<PrivateKey>
"
	| algorithm class selector |
	algorithm := type asSymbol.
	class :=
		self == PrivateKey
			ifTrue: [ self selectImplementationFor: algorithm ]
			ifFalse: [ self ].
	selector := class action: #parameters2key for: algorithm.
	^class new perform: selector with: parameters