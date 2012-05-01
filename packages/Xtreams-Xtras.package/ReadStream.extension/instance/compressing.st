transforming
compressing
	"Treats the bytes (0..255) produced by the source stream as ZLib compressed content and decompresses (inflates) them. The source must be binary."
	"	^	<CompressReadStream>
	""
		| compressed |
		compressed := (ByteArray new writing compressing encoding: #ascii) write: 'Hello World!'; conclusion.
		(compressed reading compressing encoding: #ascii) rest.
	"
	^CompressReadStream on: self