services
keyStream: character session: session
"Here's how the key stream should be built:
	K1 = HASH(K || H || X || session_id)   (X is e.g., 'A')
      K2 = HASH(K || H || K1)
      K3 = HASH(K || H || K1 || K2)
      ...
      key = K1 || K2 || K3 || ...
"
	| suffix chunk first |
	suffix := (ByteArray with: character asInteger), session.
	first := true.
	^[	chunk := ((kh reading, suffix reading) hashing: self hashID) -= 0; close; digest.
		first
			ifTrue: [suffix := chunk. first := false]
			ifFalse: [suffix := suffix, chunk].
		chunk reading
	] reading stitching