private
dsaSignatureElementsFrom: bytes
	<algorithm: #DSA action: #signature2elements>
	^(DERReadStream on: bytes reading) get