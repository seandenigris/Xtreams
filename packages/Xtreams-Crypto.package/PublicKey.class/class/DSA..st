deprecated
DSA: elements
"The elements is a sequence of 4 positive integers corresponding to the following dsa public key elements (in that order):
	y (pub_key)
	p
	q
	g
	count (optional, Windows only)
	seed (optional, Windows only)
"
	^self algorithm: #DSA elements: elements