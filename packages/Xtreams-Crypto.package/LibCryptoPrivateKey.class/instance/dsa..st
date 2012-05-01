initialize-release
dsa: elements
	<algorithm: #DSA action: #elements2key>
	| der length ppointer dsa sequence |
	"From d2i_DSAPrivateKey documentation: The DSAPrivateKey functions also use a non standard structure consisting of a SEQUENCE containing the p, q, g and pub_key and priv_key fields respectively."
	sequence := Array new: 6 withAll: 0.
	sequence replaceFrom: 2 to: sequence size with: (elements first: 5) startingAt: 1.
	der := (DERWriteStream on: ByteArray new writing) put: sequence; close; terminal.
	length := der size.
	der := der copyToHeap.
	ppointer := der copyToHeap.
	[	(dsa := library d2i_DSAPrivateKey: nil with: ppointer with: length) isValid ifFalse: [ self error ].
	] ensure: [ der free. ppointer free ].
	self algorithm: #DSA keyType: library EVP_PKEY_DSA blob: dsa