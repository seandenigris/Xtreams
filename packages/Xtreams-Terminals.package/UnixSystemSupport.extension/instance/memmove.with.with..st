procedures
memmove: s1 with: s2 with: n
	<C: void *memmove(void *s1, const void *s2, size_t n)>
	^self externalAccessFailedWith: _errorCode