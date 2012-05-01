private
rsaSignatureFromElements: elements
	<algorithm: #RSA action: #elements2signature>
	| int intSize byteSize ws |
	int := elements first.
	intSize := int basicSize.
	byteSize := self keyLength - 1 // 8 + 1.
	ws := (ByteArray new: int basicSize) writing.
	ws ++ (byteSize - intSize).
	intSize to: 1 by: -1 do: [ :i | ws put: (int basicAt: i) ].
	^ws close; terminal