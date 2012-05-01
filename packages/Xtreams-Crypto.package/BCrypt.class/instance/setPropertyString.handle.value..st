api-general
setPropertyString: name handle: handle value: string

	| status id property |
	id := name asCStringEncoding: #utf16.
	property := string asCStringEncoding: #utf16.
	((status := self BCryptSetProperty: handle with: id with: property with: property size with: 0)
		= 0) ifFalse: [ self errorStatus: status ]