instance creation
example1024DSAKeyElementsPublic
"
	PublicKey DSA: self example1024DSAKeyElementsPublic
"
	| elements pqgy |
	elements := self example1024DSAKeyElements.
	pqgy := elements first: 4.
	^(Array with: pqgy last), (pqgy first: 3), (elements last: 2)