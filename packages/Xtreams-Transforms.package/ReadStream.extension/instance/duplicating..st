transforming
duplicating: aWriteStream
	"Duplicate all the contents read into @aWriteStream"
	"	aWriteStream <WriteStream>	a stream to copy into
		^<DuplicatingReadSteam>
	""
		| copy |
		copy := ByteArray new writing.
		((0 to: 15) reading duplicating: copy) rest -> copy conclusion
	"
	^DuplicateReadStream on: self duplicate: aWriteStream