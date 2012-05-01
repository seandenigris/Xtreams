procedures-hashes
BCryptCreateHash: hAlgorithm with: phHash with: pbHashObject with: cbHashObject with: pbSecret with: cbSecret with: dwFlags
	<C: NTSTATUS BCryptCreateHash(
		BCRYPT_ALG_HANDLE hAlgorithm,
		BCRYPT_HASH_HANDLE *phHash,
		PUCHAR pbHashObject,
		ULONG cbHashObject,
		PUCHAR pbSecret,
		ULONG cbSecret,
		ULONG dwFlags)>
	^self externalAccessFailed