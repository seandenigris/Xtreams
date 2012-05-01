private
dsaElements
	<algorithm: #DSA action: #key2elements>
	^(DERReadStream on: self keyBlob reading) get allButFirst: 1