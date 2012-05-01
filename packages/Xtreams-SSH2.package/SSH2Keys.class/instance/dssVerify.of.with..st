private
dssVerify: signature of: digest with: hostKey

	| dsa sig |
	dsa := self publicKeyFrom: hostKey.
	^[	sig := dsa signatureFromElements: (
			Array with: ((signature copyFrom: 1 to: 20) reverse changeClassTo: LargePositiveInteger) 
				with: ((signature copyFrom: 21 to: 40)  reverse changeClassTo: LargePositiveInteger)).
		dsa verify: sig of: digest
	] ensure: [ dsa release ]