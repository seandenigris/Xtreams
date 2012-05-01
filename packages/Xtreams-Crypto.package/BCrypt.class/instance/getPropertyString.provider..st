api-general
getPropertyString: name provider: provider

	| status property propertyLength id |
	id := name asCStringEncoding: #utf16.
	propertyLength := self DWORD malloc.
	[	((status := self BCryptGetProperty: provider with: id with: nil with: 0 with: propertyLength with: 0)
			= 0) ifFalse: [ self errorStatus: status ].
		property := ByteArray new: propertyLength contents.
		((status := self BCryptGetProperty: provider with: id with: property with: property size with: propertyLength with: 0)
					= 0) ifFalse: [ self errorStatus: status ].
		^(property withEncoding: #utf16) readStream upTo: (Character codePoint: 0)
	] ensure: [ propertyLength free ]