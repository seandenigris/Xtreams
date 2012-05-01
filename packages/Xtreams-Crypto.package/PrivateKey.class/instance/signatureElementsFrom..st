accessing
signatureElementsFrom: signature
"Convert the bytes of the signature into its constituent elements (generally large positive integers). The number and meaning of the elements depends on the key type.
	signature	<Object> the digital signature value (often just a ByteArray)
	^<Array of: Integer>
"
	| selector |
	selector := self class action: #signature2elements for: type.
	^self perform: selector with: signature