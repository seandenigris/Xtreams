deprecated
DH: elements
"Create a DH key from its elements, which is a sequence of 4 positive integers corresponding to the following dh private key elements (in that order):
	p
	g
	y (pub_key)
	x (priv_key)
"
	^self algorithm: #DH elements: elements