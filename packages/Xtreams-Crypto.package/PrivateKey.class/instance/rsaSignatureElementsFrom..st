private
rsaSignatureElementsFrom: bytes
	<algorithm: #RSA action: #signature2elements>
	| rs int |
	rs := bytes reading.
	int := LargePositiveInteger basicNew: bytes size.
	bytes size to: 1 by: -1 do: [ :i | int basicAt: i put: rs get ].
	^Array with: int compressed