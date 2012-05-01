private
dsaElements
	<algorithm: #DSA action: #key2elements>
	| blob cbKey size q p g y x count seed |
	blob := self keyBlob reading.
	((blob encoding: #ascii) read: 4) = 'DSPV' "BCRYPT_DSA_PRIVATE_MAGIC" ifFalse: [ self error: 'Will not happen' ].
	cbKey := (blob interpreting: #unsignedLong) get.
	count := (blob limiting: 4) inject: 0 into: [ :total :byte | total * 256 + byte ]. "Count[4]"
	size := 20.
	blob := blob transforming: [ :in :out || nr |
			nr := LargePositiveInteger basicNew: size.
			size to: 1 by: -1 do: [ :i | nr basicAt: i put: in get ].
			out put: nr compressed ].
	blob contentsSpecies: Array.
	seed := blob get.
	q := blob get.
	size := cbKey.
	p := blob get.
	g := blob get.
	y := blob get.
	size := 20.
	x := blob get.
	^Array new writing put: p; put: q; put: g; put: y; put: x; put: count; put: seed; close; terminal