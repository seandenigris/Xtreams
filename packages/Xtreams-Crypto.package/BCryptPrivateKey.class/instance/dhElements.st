private
dhElements
	<algorithm: #DH action: #key2elements>
	| blob cbKey p g y x |
	blob := self keyBlob reading.
	((blob encoding: #ascii) read: 4) = 'DHPV' "BCRYPT_DH_PRIVATE_MAGIC" ifFalse: [ self error: 'Will not happen' ].
	cbKey := (blob interpreting: #unsignedLong) get.
	blob := blob transforming: [ :in :out || nr |
			nr := LargePositiveInteger basicNew: cbKey.
			cbKey to: 1 by: -1 do: [ :i | nr basicAt: i put: in get ].
			out put: nr compressed ].
	blob contentsSpecies: Array.
	p := blob get.
	g := blob get.
	y := blob get.
	x := blob get.
	^Array new writing put: p; put: g; put: y; put: x; close; terminal