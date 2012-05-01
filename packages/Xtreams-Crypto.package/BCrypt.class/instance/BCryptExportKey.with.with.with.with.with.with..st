procedures-asymmetric
BCryptExportKey: hKey with: hExportKey with: pszBlobType with: pbOutput with: cbOutput with: pcbResult with: dwFlags
"The BCryptExportKey function exports a key to a memory BLOB that can be persisted for later use."
	<C: NTSTATUS BCryptExportKey(
		BCRYPT_KEY_HANDLE hKey,
		BCRYPT_KEY_HANDLE hExportKey,
		LPCWSTR pszBlobType,
		PUCHAR pbOutput,
		ULONG cbOutput,
		ULONG *pcbResult,
		ULONG dwFlags)>