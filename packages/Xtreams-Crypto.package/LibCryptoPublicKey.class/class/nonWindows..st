private-implementation selection
nonWindows: algorithm

	<priority: 10>
	^(OSHandle currentOS ~~ #win32) and: [
		"Only 1.0.0 and up provides the public key APIs in the EVP layer"
		[	LibCryptoEVP versionTokensInto: [ :major :minor :fix | major >= 1 ]
		] on: LibraryNotLoadedError do: [ :ex | false ] ]