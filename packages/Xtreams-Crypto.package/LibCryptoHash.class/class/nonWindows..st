implementation selection
nonWindows: class

	<priority: 10>
	^class == Hash
	and: [ OSHandle currentOS ~~ #win32
	and: [	[	LibCryptoEVP versionString. true
			] on: LibraryNotLoadedError do: [ :ex | false ] ] ]