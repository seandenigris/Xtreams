class initialization
initializeEncryptionAlgorithms
"Maps ssh encryption spec to cipher name, mode, key size and iv/block size
"
	(EncryptionAlgorithms := Dictionary new)
		at: '3des-cbc' put: #('3DES' 'CBC' 24 8); "REQUIRED"
      	at: 'blowfish-cbc' put: #('BF' 'CBC' 16 8);
		at: 'aes256-cbc' put: #('AES' 'CBC' 32 16);
		at: 'aes128-cbc' put: #('AES' 'CBC' 16 16); "RECOMMENDED"
		at: 'arcfour' put: #('RC4' nil 16 0);
		at: 'none' put: #(nil nil nil nil);
		yourself