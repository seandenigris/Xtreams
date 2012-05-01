private
dhElements
	<algorithm: #DH action: #key2elements>
	| blob cbKey p g y |
	blob := self keyBlob reading.
	((blob encoding: #ascii) read: 4) = 'DHPB' "BCRYPT_DH_PUBLIC_MAGIC" ifFalse: [ self error: 'Will not happen' ].
	cbKey := (blob interpreting: #unsignedLong) get.
	blob := blob transforming: [ :in :out || nr |
			nr := LargePositiveInteger basicNew: cbKey.
			cbKey to: 1 by: -1 do: [ :i | nr basicAt: i put: in get ].
			out put: nr compressed ].
	blob contentsSpecies: Array.
	p := blob get.
	g := blob get.
	y := blob get.
	^Array new writing put: p; put: g; put: y; close; terminal