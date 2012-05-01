procedures
ERR_error_string: e with: buf

	<C: char *ERR_error_string(unsigned long e, char *buf)>
	^self externalAccessFailedWith: _errorCode