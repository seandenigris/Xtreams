analyse - core
analyse: reading character: aClass
	<analyse: 'Core.Character'>

	| character |
	reading log: ['character: ', character printString] do: [character := self get: reading character: aClass]