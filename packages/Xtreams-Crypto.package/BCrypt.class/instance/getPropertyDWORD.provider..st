api-general
getPropertyDWORD: name provider: provider

	| status property propertyLength id |
	id := name asCStringEncoding: #utf16.
	property := self DWORD malloc.
	propertyLength := self DWORD malloc.
	^[	((status := self BCryptGetProperty: provider with: id with: property with: property sizeof with: propertyLength with: 0)
			= 0) ifFalse: [ self errorStatus: status ].
		property contents
	] ensure: [ property free. propertyLength free ]