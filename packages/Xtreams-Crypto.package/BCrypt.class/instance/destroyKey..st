api-ciphers
destroyKey: handle

	| status |
	((status := self BCryptDestroyKey: handle) = 0) ifFalse: [ self errorStatus: status ]