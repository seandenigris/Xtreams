writing - complex
put: writing bytes: bytearray
	<writes: 'Core.ByteArray'>

	self put: writing integer: bytearray size.
	bytearray do: [:byte | self put: writing byte: byte]