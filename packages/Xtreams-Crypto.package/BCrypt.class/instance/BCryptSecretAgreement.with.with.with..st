procedures-asymmetric
BCryptSecretAgreement: hPrivKey with: hPubKey with: phSecret with: dwFlags
"The BCryptSecretAgreement function creates a secret agreement value from a private and a public key."
	<C: NTSTATUS BCryptSecretAgreement(
		BCRYPT_KEY_HANDLE hPrivKey,
		BCRYPT_KEY_HANDLE hPubKey,
		BCRYPT_SECRET_HANDLE *phSecret,
		ULONG dwFlags)>