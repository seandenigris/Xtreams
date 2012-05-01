implementation selection
nonWindows

	<priority: 10>
	^(OSHandle currentOS ~~ #win32) and: [
		[	LibCryptoEVP versionString. true
		] on: LibraryNotLoadedError do: [ :ex | false ] ]