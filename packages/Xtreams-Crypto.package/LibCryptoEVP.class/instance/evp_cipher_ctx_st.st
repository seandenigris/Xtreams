structs
evp_cipher_ctx_st
	<C:struct evp_cipher_ctx_st {
			const EVP_CIPHER *cipher;
			ENGINE *engine;	/* functional reference if 'cipher' is ENGINE-provided */
			int encrypt;			/* encrypt or decrypt */
			int buf_len;			/* number we have left */

			unsigned char  oiv[16];	/* original iv */
			unsigned char  iv[16];	/* working iv */
			unsigned char buf[32];	/* saved partial block */
			int num;				/* used by cfb/ofb mode */

			void *app_data;		/* application stuff */
			int key_len;			/* May change for variable length cipher */
			unsigned long flags;	/* Various flags */
			void *cipher_data;	/* per EVP data */
			int final_used;
			int block_mask;
			unsigned char final[32];	/* possible final block */
	}>