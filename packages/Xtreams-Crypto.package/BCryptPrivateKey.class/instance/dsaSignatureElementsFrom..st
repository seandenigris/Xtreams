private
dsaSignatureElementsFrom: bytes
	<algorithm: #DSA action: #signature2elements>
	| rs r s |
	rs := bytes reading.
	r := LargePositiveInteger basicNew: 20.
	20 to: 1 by: -1 do: [ :i | r basicAt: i put: rs get ].
	r := r compressed.
	s := LargePositiveInteger basicNew: 20.
	20 to: 1 by: -1 do: [ :i | s basicAt: i put: rs get ].
	s := s compressed.
	^Array with: r with: s