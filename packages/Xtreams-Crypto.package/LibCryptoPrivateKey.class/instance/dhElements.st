private
dhElements
	<algorithm: #DH action: #key2elements>
	| dh pub pri |
	dh := (handle memberAt: #pkey) memberAt: #dh.
	pub := library bn2lpi: (dh memberAt: #pub_key).
	pri := library bn2lpi: (dh memberAt: #priv_key).
	^Array new writing write: (DERReadStream on: self keyBlob reading) get; put: pub; put: pri; close; terminal