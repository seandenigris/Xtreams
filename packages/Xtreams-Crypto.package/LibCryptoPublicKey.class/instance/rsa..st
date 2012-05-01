initialize-release
rsa: elements
	<algorithm: #RSA action: #elements2key>
	| der length ppointer rsa |
	"From PKCS#1:
		RSAPublicKey ::= SEQUENCE {
			modulus INTEGER, -- n
			publicExponent INTEGER -- e }"
	der := (DERWriteStream on: ByteArray new writing) put: elements; close; terminal.
	length := der size.
	der := der copyToHeap.
	ppointer := der copyToHeap.
	[	(rsa := library d2i_RSAPublicKey: nil with: ppointer with: length) isValid ifFalse: [ self error ].
	] ensure: [ der free. ppointer free ].
	self algorithm: #RSA keyType: library EVP_PKEY_RSA blob: rsa