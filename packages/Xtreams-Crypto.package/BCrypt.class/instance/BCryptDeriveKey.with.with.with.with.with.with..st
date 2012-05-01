procedures-asymmetric
BCryptDeriveKey: hSharedSecret with: pwszKDF with: pParameterList with: pbDerivedKey with: cbDerivedKey with: pcbResult with: dwFlags
"The BCryptDeriveKey function derives a key from a secret agreement value."
	<C: NTSTATUS BCryptDeriveKey(
		BCRYPT_SECRET_HANDLE hSharedSecret,
		LPCWSTR pwszKDF,
		BCryptBufferDesc *pParameterList,
		PUCHAR pbDerivedKey,
		ULONG cbDerivedKey,
		ULONG *pcbResult,
		ULONG dwFlags)>