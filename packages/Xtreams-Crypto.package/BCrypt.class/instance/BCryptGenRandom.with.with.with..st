procedures-general
BCryptGenRandom: hAlgorithm with: pbBuffer with: cbBuffer with: dwFlags
	<C: NTSTATUS BCryptGenRandom(
		BCRYPT_ALG_HANDLE hAlgorithm,
		PUCHAR pbBuffer,
		ULONG cbBuffer,
		ULONG dwFlags)>
	^self externalAccessFailed