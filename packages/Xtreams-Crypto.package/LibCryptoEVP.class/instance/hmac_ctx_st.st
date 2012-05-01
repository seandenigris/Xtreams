structs
hmac_ctx_st
	<C: struct hmac_ctx_st
        {
        const EVP_MD *md;
        EVP_MD_CTX md_ctx;
        EVP_MD_CTX i_ctx;
        EVP_MD_CTX o_ctx;
        unsigned int key_length;
        unsigned char key[128];
        } >