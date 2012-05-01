procedures-hashes
BCryptHashData: hHash with: pbInput with: cbInput with: dwFlags
	<C: NTSTATUS BCryptHashData(
		BCRYPT_HASH_HANDLE hHash,
		PUCHAR pbInput,
		ULONG cbInput,
		ULONG dwFlags)>
	^self externalAccessFailed