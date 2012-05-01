accessing
hostKeyFor: algorithm

	^keys keys detect: [ :key | key typeID = algorithm ]