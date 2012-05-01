instance creation
algorithm: type elements: elements
"Creates a key for specified algorithm type from provided key elements. The elements are algorithm specific.
	type		<String | Symbol> algorithm name
	elements	<Array> elements of the key (usually large positive integers)
	^<PublicKey>
"
	| algorithm class selector |
	algorithm := type asSymbol.
	class := self selectImplementationFor: algorithm.
	selector := class action: #elements2key for: algorithm.
	^class new perform: selector with: elements