analyse - numbers
analyse: reading float: aClass
	<analyse: 'Core.Float'>

	| float |
	reading log: ['float: ', float printString] do: [float := self get: reading float: aClass]