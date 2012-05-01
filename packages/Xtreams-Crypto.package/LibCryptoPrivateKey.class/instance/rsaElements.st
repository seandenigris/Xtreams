private
rsaElements
	<algorithm: #RSA action: #key2elements>
	^(DERReadStream on: self keyBlob reading) get allButFirst: 1