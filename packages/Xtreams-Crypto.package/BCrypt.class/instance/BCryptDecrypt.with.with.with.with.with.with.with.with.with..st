procedures-ciphers
BCryptDecrypt: hKey with: pbInput with: cbInput with: pPaddingInfo with: pbIV with: cbIV with: pbOutput with: cbOutput with: pcbResult with: dwFlags
	<C: NTSTATUS BCryptDecrypt(
		BCRYPT_KEY_HANDLE hKey,
		PUCHAR pbInput,
		ULONG cbInput,
		VOID *pPaddingInfo,
		PUCHAR pbIV,
		ULONG cbIV,
		PUCHAR pbOutput,
		ULONG cbOutput,
		ULONG *pcbResult,
		ULONG dwFlags)>
	^self externalAccessFailed