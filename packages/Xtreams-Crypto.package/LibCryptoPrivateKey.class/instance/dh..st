initialize-release
dh: elements
	<algorithm: #DH action: #elements2key>
	| dh |
	dh := self dhParametersFrom: (elements first: 2).
	[ :p :g :pub :pri |
		dh memberAt: #pub_key put: (library lpi2bn: pub).
		dh memberAt: #priv_key put: (library lpi2bn: pri)
	] valueWithArguments: elements asArray.
	self algorithm: #DH keyType: library EVP_PKEY_DH blob: dh