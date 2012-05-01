structs
env_md_st
	<C: struct env_md_st {
			int type;
			int pkey_type;
			int md_size;
			unsigned long flags;
			int (*init)(EVP_MD_CTX *ctx);
			int (*update)(EVP_MD_CTX *ctx,const void *data,size_t count);
			int (*final)(EVP_MD_CTX *ctx,unsigned char *md);
			int (*copy)(EVP_MD_CTX *to,const EVP_MD_CTX *from);
			int (*cleanup)(EVP_MD_CTX *ctx);
	
			/* FIXME: prototype these some day */
			int (*sign)(int type, const unsigned char *m, unsigned int m_length, unsigned char *sigret, unsigned int *siglen, void *key);
			int (*verify)(int type, const unsigned char *m, unsigned int m_length, const unsigned char *sigbuf, unsigned int siglen, void *key);
			int required_pkey_type[5]; /*EVP_PKEY_xxx */
			int block_size;
			int ctx_size; /* how big does the ctx->md_data need to be */
			/* control function */
			int (*md_ctrl)(EVP_MD_CTX *ctx, int cmd, int p1, void *p2);
	}>