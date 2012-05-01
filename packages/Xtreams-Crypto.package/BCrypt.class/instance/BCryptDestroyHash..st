procedures-hashes
BCryptDestroyHash: hHash
	<C: NTSTATUS BCryptDestroyHash(
		BCRYPT_HASH_HANDLE hHash)>
	^self externalAccessFailed