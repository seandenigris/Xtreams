initialize-release
prepareChars

	| pointer |
	pointer := CIntegerType char malloc: 50.
	stream := pointer writing length: 50; yourself.