implementation selection
nonWindows: class

	<priority: 10>
	^class == HMAC
	and: [ OSHandle currentOS ~~ #win32
	and: [	[	LibCryptoEVP versionString. true
			] on: LibraryNotLoadedError do: [ :ex | false ] ] ]