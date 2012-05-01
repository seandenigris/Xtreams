initialize-release
dsa: elements
	<algorithm: #DSA action: #elements2key>
	| der length ppointer dsa |
	"From d2i_DSAPrivateKey documentation: The DSAPublicKey functions use an non standard format the actual data encoded depends on the value of the write_params field of the a key parameter. If write_params is zero then only the pub_key field is encoded as an INTEGER. If write_params is 1 then a SEQUENCE consisting of the p, q, g and pub_key respectively fields are encoded."
	der := (DERWriteStream on: ByteArray new writing) put: (elements first: 4); close; terminal.
	length := der size.
	der := der copyToHeap.
	ppointer := der copyToHeap.
	[	(dsa := library d2i_DSAPublicKey: nil with: ppointer with: length) isValid ifFalse: [ self error ].
	] ensure: [ der free. ppointer free ].
	self algorithm: #DSA keyType: library EVP_PKEY_DSA blob: dsa