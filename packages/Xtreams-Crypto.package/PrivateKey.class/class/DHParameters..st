deprecated
DHParameters: elements
"Generate a DH key from parameters, which is a sequence of 2 positive integers corresponding to the following dh parameters (in that order):
	p
	g
"
	^self algorithm: #DH parameters: elements