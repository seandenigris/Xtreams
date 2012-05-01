analyse - numbers
analyse: reading integerMedium: aClass
	| integer |
	reading log: ['medium integer: ', integer printString] do: [integer := self get: reading integerMedium: aClass]