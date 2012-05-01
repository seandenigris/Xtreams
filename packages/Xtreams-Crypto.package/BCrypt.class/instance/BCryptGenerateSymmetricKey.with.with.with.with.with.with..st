procedures-ciphers
BCryptGenerateSymmetricKey: hAlgorithm with: phKey with: pbKeyObject with: cbKeyObject with: pbSecret with: cbSecret with: dwFlags
	<C: NTSTATUS BCryptGenerateSymmetricKey(
		BCRYPT_ALG_HANDLE hAlgorithm,
		BCRYPT_KEY_HANDLE *phKey,
		PUCHAR pbKeyObject,
		ULONG cbKeyObject,
		PUCHAR pbSecret,
		ULONG cbSecret,
		ULONG dwFlags)>
	^self externalAccessFailed