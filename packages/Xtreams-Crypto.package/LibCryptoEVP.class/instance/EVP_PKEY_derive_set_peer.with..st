procedures-pkeys
EVP_PKEY_derive_set_peer: ctx with: peer
	<C: int EVP_PKEY_derive_set_peer(EVP_PKEY_CTX *ctx, EVP_PKEY *peer)>
	^self externalAccessFailedWith: _errorCode