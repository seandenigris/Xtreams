utility
lpi2bn: integer

	| limit bytes |
	limit := integer digitLength + 1.
	bytes := ByteArray new: limit - 1.
	1 to: limit - 1 do: [ :i | bytes at: i put: (integer basicAt: limit - i) ].
	^self bin2bn: bytes