structs
evp_pkey_st
	<C: struct evp_pkey_st {
		int type;
		int save_type;
		int references;
		const EVP_PKEY_ASN1_METHOD *ameth;
		ENGINE *engine;
		union   {
				char *ptr;
				struct rsa_st *rsa;     /* RSA */
				struct dsa_st *dsa;     /* DSA */
				struct dh_st *dh;       /* DH */
				} pkey;
		int save_parameters;
		void *attributes; /* [ 0 ] */
		} >