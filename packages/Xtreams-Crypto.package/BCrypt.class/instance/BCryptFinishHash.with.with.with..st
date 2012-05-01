procedures-hashes
BCryptFinishHash: hHash with: pbOutput with: cbOutput with: dwFlags
	<C: NTSTATUS BCryptFinishHash(
		BCRYPT_HASH_HANDLE hHash,
		PUCHAR pbOutput,
		ULONG cbOutput,
		ULONG dwFlags)>
	^self externalAccessFailed