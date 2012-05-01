private
dsaSignatureFromElements: elements
"Encodes DSA signature elements into bytes. The elements must be exactly the pair of integers r and s in that order.
"
	<algorithm: #DSA action: #elements2signature>
	^[ :r :s || bytes |
		bytes := ByteArray new writing.
		(20 - r digitLength) timesRepeat: [ bytes put: 0 ].
		r digitLength to: 1 by: -1 do: [ :i | bytes put: (r basicAt: i) ].
		(20 - s digitLength) timesRepeat: [ bytes put: 0 ].
		s digitLength to: 1 by: -1 do: [ :i | bytes put: (s basicAt: i) ].
		bytes close; terminal
	] valueWithArguments: elements asArray