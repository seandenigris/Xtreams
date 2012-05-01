structs
dh_st
	<C: struct dh_st {
		/* This first argument is used to pick up errors when
		 * a DH is passed instead of a EVP_PKEY */
		int pad;
		int version;
		BIGNUM *p;
		BIGNUM *g;
		long length; /* optional */
		BIGNUM *pub_key;		/* g^x */
		BIGNUM *priv_key;       /* x */

		int flags;
		BN_MONT_CTX *method_mont_p;
		/* Place holders if we want to do X9.42 DH */
		BIGNUM *q;
		BIGNUM *j;
		unsigned char *seed;
		int seedlen;
		BIGNUM *counter;

		int references;
		/* CRYPTO_EX_DATA ex_data (expanded here)*/
		void *crypto_ex_data_st_sk;
		int crypto_ex_data_st_dummy;
		const DH_METHOD *meth;
		ENGINE *engine;
		}>