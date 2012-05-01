procedures-ciphers
BCryptDestroyKey: hKey
	<C: NTSTATUS BCryptDestroyKey(
		BCRYPT_KEY_HANDLE hKey)>
	^self externalAccessFailed