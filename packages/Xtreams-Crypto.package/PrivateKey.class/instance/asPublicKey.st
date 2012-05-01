accessing
asPublicKey
"Convert the receiver into a corresponding public key instance.
	^<PublicKey>
"
	| selector |
	selector := self class action: #key2key for: type.
	^self perform: selector