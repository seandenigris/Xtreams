private
dhParametersFrom: elements

	| der length ppointer dh |
	"From d2i_DHparam documentation: These functions decode and encode PKCS#3 DH parameters using the DHparameter structure described in PKCS#3.
	From PKCS#3:
		DHParameter ::= SEQUENCE {
			prime INTEGER, -- p
			base INTEGER, -- g
			privateValueLength INTEGER OPTIONAL }"
	der := (DERWriteStream on: ByteArray new writing) put: elements; close; terminal.
	length := der size.
	der := der copyToHeap.
	ppointer := der copyToHeap.
	[	(dh := library d2i_DHparams: nil with: ppointer with: length) isValid ifFalse: [ self error ].
	] ensure: [ der free. ppointer free ].
	^dh