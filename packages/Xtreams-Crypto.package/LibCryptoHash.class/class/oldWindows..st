implementation selection
oldWindows: class

	<priority: 10>
	^class == Hash
	and: [ OSHandle currentOS == #win32
	and: [ "Allow using OpenSSL as a workaround for older versions of Windows"
		Win32SystemSupport isVistaOrLater not
	and: [	[	LibCryptoEVP versionString. true
			] on: LibraryNotLoadedError do: [ :ex | false ] ] ] ]