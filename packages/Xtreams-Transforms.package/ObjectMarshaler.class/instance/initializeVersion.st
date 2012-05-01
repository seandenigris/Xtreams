initialize-release
initializeVersion
	| hash versionWriting |
	version := #[83 84 83 84 20]. "STST 2.0"
	hash := self class absoluteName hash.
	(self class methodDictionary keys asSortedCollection: [:a :b | (a trueCompare: b) <= 0]) do: [:key |
		hash := (hash bitXor: key stringhash) bitXor: (self class methodDictionary at: key) bytes hash].

	versionWriting := ByteArray new writing.
	versionWriting write: version.
	versionWriting write: hash digitLength.
	[hash > 0] whileTrue: [versionWriting write: (hash bitAnd: 255). hash := hash bitShift: -8].
	version := versionWriting conclusion