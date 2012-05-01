class initialization
initializeMACAlgorithms
"Maps ssh mac name to hash name and digest size
"
	(MACAlgorithms := Dictionary new)
		at: 'hmac-sha1' put: #('sha1' 20);
		at: 'hmac-md5' put: #('md5' 16);
		yourself