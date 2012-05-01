procedures-hashes
BCryptDuplicateHash: hHash with: phNewHash with: pbHashObject with: cbHashObject with: dwFlags
	<C: NTSTATUS BCryptDuplicateHash(
		BCRYPT_HASH_HANDLE hHash,
		BCRYPT_HASH_HANDLE *phNewHash,
		PUCHAR pbHashObject,
		ULONG cbHashObject,
		ULONG dwFlags)>
	^self externalAccessFailed