private
dhPublicKey
	<algorithm: #DH action: #key2key>
	^self class publicKeyClass algorithm: #DH elements: (self elements first: 3)