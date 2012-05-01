Encapsulate all the public/private key operations including translation to/from SSH2 host keys (public keys transferred by the protocol). This is to allow arbitrary implementation of these operations via native smalltalk implementation, external libraries, external hardware devicase (e.g. smartcards). This particular implementation uses VW security library, but can be replaced by an alternative. Note that the way it is applied is by setting an instance as the 'keys' of an SSH2Configuration.

Instance Variables
	keys	<Dictionary key: SSH2HostKey value: (Association key: PublicKey value: PrivateKey)> key storage

