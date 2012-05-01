initialize-release
prepareFloats

	| pointer |
	pointer := CLimitedPrecisionRealType float malloc: 50.
	stream := pointer writing length: 50; yourself.