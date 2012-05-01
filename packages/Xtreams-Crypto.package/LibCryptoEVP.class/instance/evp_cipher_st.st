structs
evp_cipher_st
	<C: struct evp_cipher_st {
			int nid;
			int block_size;
			int key_len;			/* Default value for variable length ciphers */
			int iv_len;
			unsigned long flags;	/* Various flags */
			int (*init)(EVP_CIPHER_CTX *ctx, const unsigned char *key, const unsigned char *iv, int enc);	/* init key */
			int (*do_cipher)(EVP_CIPHER_CTX *ctx, unsigned char *out, const unsigned char *in, size_t inl);	/* encrypt/decrypt data */
			int (*cleanup)(EVP_CIPHER_CTX *); /* cleanup ctx */
			int ctx_size;			/* how big ctx->cipher_data needs to be */
			int (*set_asn1_parameters)(EVP_CIPHER_CTX *, ASN1_TYPE *);	/* Populate a ASN1_TYPE with parameters */
			int (*get_asn1_parameters)(EVP_CIPHER_CTX *, ASN1_TYPE *);	/* Get parameters from a ASN1_TYPE */
			int (*ctrl)(EVP_CIPHER_CTX *, int type, int arg, void *ptr);			/* Miscellaneous operations */
			void *app_data;		/* Application data */
	} >