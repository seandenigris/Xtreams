procedures-asymmetric
BCryptDestroySecret: hSecret
	<C: NTSTATUS BCryptDestroySecret(
		BCRYPT_SECRET_HANDLE hSecret)>
	^self externalAccessFailed