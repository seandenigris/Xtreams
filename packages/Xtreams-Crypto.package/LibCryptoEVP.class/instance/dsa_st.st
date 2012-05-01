structs
dsa_st
	<C: struct dsa_st {
		int pad;
		long version;
		int write_params;
		BIGNUM *p;
		BIGNUM *q;      /* == 20 */
		BIGNUM *g;

		BIGNUM *pub_key;  /* y public key */
		BIGNUM *priv_key; /* x private key */

		BIGNUM *kinv;   /* Signing pre-calc */
		BIGNUM *r;      /* Signing pre-calc */

		int flags;
		/* Normally used to cache montgomery values */
		BN_MONT_CTX *method_mont_p;
		int references;
		/* CRYPTO_EX_DATA ex_data (expanded here)*/
		void *crypto_ex_data_st_sk;
		int crypto_ex_data_st_dummy;
		const DSA_METHOD *meth;
		/* functional reference if 'meth' is ENGINE-provided */
		ENGINE *engine;
		}>