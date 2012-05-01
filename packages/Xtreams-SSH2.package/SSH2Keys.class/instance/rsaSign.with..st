private
rsaSign: digest with: hostKey

	^(keys at: hostKey) value sign: digest hash: 'SHA1' padding: 'PKCS1'