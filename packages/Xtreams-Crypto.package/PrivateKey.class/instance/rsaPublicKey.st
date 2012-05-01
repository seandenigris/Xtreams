private
rsaPublicKey
	<algorithm: #RSA action: #key2key>
	^self class publicKeyClass algorithm: #RSA elements: (self elements first: 2)