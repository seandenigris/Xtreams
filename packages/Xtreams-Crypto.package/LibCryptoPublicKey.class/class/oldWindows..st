private-implementation selection
oldWindows: algorithm
 
	<priority: 5>
	^(OSHandle currentOS = #win32)
	and: [ "Allow using OpenSSL as a workaround for older versions of Windows"
		Win32SystemSupport isVistaOrLater not
	and: [ "Only 1.0.0 and up provides the public key APIs in the EVP layer"
		[	LibCryptoEVP versionTokensInto: [ :major :minor :fix | major >= 1 ]
		] on: LibraryNotLoadedError do: [ :ex | false ] ] ]