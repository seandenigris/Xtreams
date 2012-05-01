accessing
sign: digestBytes hash: hashID padding: paddingID

	| siglen signature |
	siglen := library sign: digestBytes into: nil key: handle hash: hashID padding: paddingID.
	signature := ByteArray new: siglen.
	siglen := library sign: digestBytes into: signature key: handle hash: hashID padding: paddingID.
	siglen = signature size ifFalse: [ self error: 'Signature size mismatch!' ].
	^signature