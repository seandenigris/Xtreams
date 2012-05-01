initialize-release
dsaLength: keySize
	<algorithm: #DSA action: #size2key>
	self algorithm: #DSA size: keySize