accessing
signatureFromElements: elements
"Encode the constituent elements of a signature (generally large positive integers) into bytes suitable for the implementation of the receiver. The number and meaning of the elements depends on the key type.
	elements <Array of: Integer> constituent elements of the signature
	^<ByteArray> the digital signature encoded in bytes
"
	| selector |
	selector := self class action: #elements2signature for: type.
	^self perform: selector with: elements