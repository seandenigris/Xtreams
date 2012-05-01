private
keyBlob

	| blobLen blob |
	blobLen := library exportAsymmetricKey: handle into: nil type: type public: false.
	blob := ByteArray new: blobLen.
	blobLen := library exportAsymmetricKey: handle into: blob type: type public: false.
	blobLen = blob size ifFalse: [ self error: 'Signature size mismatch!' ].
	^blob