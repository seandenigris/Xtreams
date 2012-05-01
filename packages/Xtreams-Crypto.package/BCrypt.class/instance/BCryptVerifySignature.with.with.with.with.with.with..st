procedures-asymmetric
BCryptVerifySignature: hKey with: pPaddingInfo with: pbHash with: cbHash with: pbSignature with: cbSignature with: dwFlags
"The BCryptVerifySignature function verifies that the specified signature matches the specified hash."
	<C: NTSTATUS BCryptVerifySignature(
		BCRYPT_KEY_HANDLE hKey,
		VOID *pPaddingInfo,
		PUCHAR pbHash,
		ULONG cbHash,
		PUCHAR pbSignature,
		ULONG cbSignature,
		ULONG dwFlags)>