structs
env_md_ctx_st
	<C: struct env_md_ctx_st {
			const EVP_MD *digest;
			ENGINE *engine; /* functional reference if 'digest' is ENGINE-provided */
			unsigned long flags;
			void *md_data;
			/* Public key context for sign/verify */
			EVP_PKEY_CTX *pctx;
			/* Update function: usually copied from EVP_MD */
			int (*update)(EVP_MD_CTX *ctx,const void *data,size_t count);
	} >