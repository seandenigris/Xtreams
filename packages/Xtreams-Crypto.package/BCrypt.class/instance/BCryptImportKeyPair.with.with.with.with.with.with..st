procedures-asymmetric
BCryptImportKeyPair: hAlgorithm with: hImportKey with: pszBlobType with: phKey with: pbInput with: cbInput with: dwFlags
"The BCryptImportKeyPair function imports a public/private key pair from a key BLOB. The BCryptImportKey function is used to import a symmetric key pair."
	<C: NTSTATUS BCryptImportKeyPair(
		BCRYPT_ALG_HANDLE hAlgorithm,
		BCRYPT_KEY_HANDLE hImportKey,
		LPCWSTR pszBlobType,
		BCRYPT_KEY_HANDLE *phKey,
		PUCHAR pbInput,
		ULONG cbInput,
		ULONG dwFlags)>