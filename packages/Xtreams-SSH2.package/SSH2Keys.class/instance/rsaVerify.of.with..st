private
rsaVerify: signature of: digest with: hostKey

	| rsa |
	rsa := self publicKeyFrom: hostKey.
	^[ 	rsa verify: signature of: digest hash: 'SHA1' padding: 'PKCS1'
	] ensure: [ rsa release ]