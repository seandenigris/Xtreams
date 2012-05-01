00 introduction
introductionCoreInstantiation2
	<slide: 6.2 title: 'reading / writing'>
"	= externals"
		'example.txt' asFilename reading.
		OS.Stdin reading.
		(External.CIntegerType unsignedChar
			gcMalloc: 50) writing.
		(OS.SocketAccessor
			newTCPclientToHost: 'localhost'
			port: 1234) reading.

"	= transcendentals"
		[0] reading. "			/dev/zero"
		[:x | ] writing. "		/dev/null"
		Kernel.ObjectMemory reading.
		Random new reading.