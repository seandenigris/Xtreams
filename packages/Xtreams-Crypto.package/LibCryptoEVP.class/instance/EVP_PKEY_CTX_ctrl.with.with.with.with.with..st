procedures-pkeys
EVP_PKEY_CTX_ctrl: ctx with: keytype with: optype with: cmd with: p1 with: p2
	<C: int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX *ctx, int keytype, int optype, int cmd, int p1, void *p2)>
	^self externalAccessFailedWith: _errorCode