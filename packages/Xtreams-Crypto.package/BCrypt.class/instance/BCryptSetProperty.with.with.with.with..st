procedures-general
BCryptSetProperty: hObject with: pszProperty with: pbInput with: cbInput with: dwFlags
	<C: NTSTATUS BCryptSetProperty(
		BCRYPT_HANDLE hObject,
		LPCWSTR pszProperty,
		PUCHAR pbInput,
		ULONG cbInput,
		ULONG dwFlags)>
	^self externalAccessFailed