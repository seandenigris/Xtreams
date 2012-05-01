Testing
isAvailable

	^(OSHandle currentOS = #win32) or: [
	LibCryptoEVP versionTokensInto: [ :major | major > 0 ] ]