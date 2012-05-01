implementation selection
oldWindows
 
	<priority: 5>
	^(OSHandle currentOS = #win32)
	and: [ "Allow using OpenSSL as a workaround for older versions of Windows"
		Win32SystemSupport isVistaOrLater not
	and: [ 
		[	LibCryptoEVP versionString. true
		] on: LibraryNotLoadedError do: [ :ex | false ] ] ]