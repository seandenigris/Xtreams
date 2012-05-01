procedures-asymmetric
BCryptSignHash: hKey with: pPaddingInfo with: pbInput with: cbInput with: pbOutput with: cbOutput with: pcbResult with: dwFlags
"The BCryptSignHash function creates a signature of a hash value."
	<C: NTSTATUS BCryptSignHash(
		BCRYPT_KEY_HANDLE hKey,
		VOID *pPaddingInfo,
		PBYTE pbInput,
		DWORD cbInput,
		PBYTE pbOutput,
		DWORD cbOutput,
		DWORD *pcbResult,
		ULONG dwFlags)>