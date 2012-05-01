Defines an abstract interface for a public key of a public key algorithm. A private key can be used for different purposes depending on the algorithm: signature verification, encryption or key agreement. An attempt to use a key for wrong purpose will most likely result in implementation specific error.

Instance Variables
	type	<Symbol> declares the key algorithm

Class Instance Variables
	actionMap	<Dictionary key: Symbol value: (Dictionary key: Symbol value: Symbol)> maps algorithms and actions to selectors that implement them

