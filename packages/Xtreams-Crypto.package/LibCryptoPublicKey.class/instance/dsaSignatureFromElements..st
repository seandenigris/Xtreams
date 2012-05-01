private
dsaSignatureFromElements: elements
"Encodes DSA signature elements into bytes. The elements must be exactly the pair of integers r and s in that order.
"
	<algorithm: #DSA action: #elements2signature>
	^(DERWriteStream on: ByteArray new writing) put: elements; close; terminal