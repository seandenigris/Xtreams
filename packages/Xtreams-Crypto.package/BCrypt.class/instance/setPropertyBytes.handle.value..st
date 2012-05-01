api-general
setPropertyBytes: name handle: handle value: bytes

	| status id |
	id := name asCStringEncoding: #utf16.
	((status := self BCryptSetProperty: handle with: id with: bytes with: bytes size with: 0)
		= 0) ifFalse: [ self errorStatus: status ]