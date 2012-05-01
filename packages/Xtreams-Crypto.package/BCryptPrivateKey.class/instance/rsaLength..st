initialize-release
rsaLength: keySize
	<algorithm: #RSA action: #size2key>
	self algorithm: #RSA size: keySize