Testing
isAvailable

	^#(#{Security.RSA} #{Security.DSA} #{Security.DH}) allSatisfy: [ :binding | binding isDefined ]