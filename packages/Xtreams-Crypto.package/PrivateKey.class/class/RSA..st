deprecated
RSA: elements
"Create a RSA key from its elements, which is a sequence of up to 9 positive integers corresponding to the following rsa public key elements (in that order):
	n	modulus
	e	publicExponent
	d	privateExponent
	p	prime1
	q	prime2
	d mod (p-1)
	d mod (q-1)
	(inverse of q) mod p
"
	^self algorithm: #RSA elements: elements