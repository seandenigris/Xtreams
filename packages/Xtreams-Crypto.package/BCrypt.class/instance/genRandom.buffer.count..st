api-general
genRandom: provider buffer: buffer count: count

	| status |
	((status := self BCryptGenRandom: provider with: buffer with: count with: 0)
		= 0) ifFalse: [ self errorStatus: status ]