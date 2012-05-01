procedures-asymmetric
BCryptGenerateKeyPair: hAlgorithm with: phKey with: dwLength with: dwFlags
"The BCryptGenerateKeyPair function creates an empty public/private key pair. After you create a key by using this function, you can use the BCryptSetProperty function to set its properties; however, the key cannot be used until the BCryptFinalizeKeyPair function is called."
	<C: NTSTATUS BCryptGenerateKeyPair(
		BCRYPT_ALG_HANDLE hAlgorithm,
		BCRYPT_KEY_HANDLE *phKey,
		ULONG dwLength,
		ULONG dwFlags)>