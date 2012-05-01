procedures-general
BCryptCloseAlgorithmProvider: hAlgorithm with: dwFlags
	<C: NTSTATUS BCryptCloseAlgorithmProvider(
		BCRYPT_ALG_HANDLE hAlgorithm,
		ULONG dwFlags)>
	^self externalAccessFailed