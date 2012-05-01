reading - complex
get: reading binding: aClass
	<reads: 'Core.VariableBinding'>

	| isInStandardEnvironment |

	isInStandardEnvironment := self unmarshal: reading.
	isInStandardEnvironment
		ifTrue: [^(self get: reading string: String) asStrictReference binding].

	^(aClass
		key: (self get: reading symbol: Symbol)
		value: (self unmarshal: reading))
			environment: (self unmarshal: reading);
			yourself