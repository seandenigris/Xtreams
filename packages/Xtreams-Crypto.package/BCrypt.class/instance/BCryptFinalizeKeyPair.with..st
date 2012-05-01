procedures-asymmetric
BCryptFinalizeKeyPair: hKey with: dwFlags
"The BCryptFinalizeKeyPair function completes a public/private key pair. The key cannot be used until this function has been called. After this function has been called, the BCryptSetProperty function can no longer be used for this key."
	<C: NTSTATUS BCryptFinalizeKeyPair(
		BCRYPT_KEY_HANDLE hKey,
		ULONG dwFlags)>