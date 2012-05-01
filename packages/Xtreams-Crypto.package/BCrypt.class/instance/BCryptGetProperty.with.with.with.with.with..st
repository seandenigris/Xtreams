procedures-general
BCryptGetProperty: hObject with: pszProperty with: pbOutput with: cbOutput with: pcbResult with: dwFlags
	<C: NTSTATUS BCryptGetProperty(
		BCRYPT_HANDLE hObject,
		LPCWSTR pszProperty,
		PUCHAR pbOutput,
		ULONG cbOutput,
		ULONG *pcbResult,
		ULONG dwFlags)>
	^self externalAccessFailed