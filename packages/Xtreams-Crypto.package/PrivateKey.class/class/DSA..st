deprecated
DSA: elements
"Create a DSA key from its elements, which is a sequence of 5 positive integers corresponding to the following dsa private key elements (in that order):
	p
	q
	g
	y (pub_key)
	x (priv_key)
	count	(optional, Windows only)
	seed	(optional, Windows only)
"
	^self algorithm: #DSA elements: elements