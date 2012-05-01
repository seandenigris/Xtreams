procedures-general
BCryptOpenAlgorithmProvider: phAlgorithm with: pszAlgId with: pszImplementation with: dwFlags
	<C: NTSTATUS BCryptOpenAlgorithmProvider(
		BCRYPT_ALG_HANDLE *phAlgorithm,
		LPCWSTR pszAlgId,
		LPCWSTR pszImplementation,
		DWORD dwFlags)>
	^self externalAccessFailed