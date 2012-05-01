initialize-release
rsa: elements
	<algorithm: #RSA action: #elements2key>
	| der length ppointer rsa sequence |
	"From PKCS#1:
		RSAPrivateKey ::= SEQUENCE {
			version Version,
			modulus INTEGER, -- n
			publicExponent INTEGER, -- e
			privateExponent INTEGER, -- d
			prime1 INTEGER, -- p
			prime2 INTEGER, -- q
			exponent1 INTEGER, -- d mod (p-1)
			exponent2 INTEGER, -- d mod (q-1)
			coefficient INTEGER, -- (inverse of q) mod p
			otherPrimeInfos OtherPrimeInfos OPTIONAL	}"
	sequence := Array new: 9 withAll: 0.
	sequence replaceFrom: 2 to: sequence size with: elements startingAt: 1.
	der := (DERWriteStream on: ByteArray new writing) put: sequence; close; terminal.
	length := der size.
	der := der copyToHeap.
	ppointer := der copyToHeap.
	[	(rsa := library d2i_RSAPrivateKey: nil with: ppointer with: length) isValid ifFalse: [ self error ].
	] ensure: [ der free. ppointer free ].
	self algorithm: #RSA keyType: library EVP_PKEY_RSA blob: rsa