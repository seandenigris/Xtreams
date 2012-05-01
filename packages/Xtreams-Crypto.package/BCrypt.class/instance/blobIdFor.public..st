private
blobIdFor: algorithm public: boolean

	^self class asNameSpace at: algorithm, (boolean ifTrue: [ 'PUBLIC_BLOB' ] ifFalse: [ 'PRIVATE_BLOB' ])