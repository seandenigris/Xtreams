accessing
elements
"Convert the key into its constituent elements (generally large positive integers). The number and meaning of the elements depend on the key type.
	^<Array of: Integer>
"
	| selector |
	selector := self class action: #key2elements for: type.
	^self perform: selector