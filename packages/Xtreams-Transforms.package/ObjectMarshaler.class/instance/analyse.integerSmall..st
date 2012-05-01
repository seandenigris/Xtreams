analyse - numbers
analyse: reading integerSmall: aClass
	| integer |
	reading log: ['small integer: ', integer printString] do: [integer := self get: reading integerSmall: aClass]