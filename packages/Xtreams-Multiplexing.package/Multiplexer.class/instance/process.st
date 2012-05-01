private - receiving
process
	| type |
	[
		[type := inputUnsignedLong get] on: Incomplete, OS.OsError do: [:exception |
			self log: ['received exception: ', exception description].
			^self cleanup].
		self process: type.
	] repeat