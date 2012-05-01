analyse - numbers
analyse: reading double: aClass
	<analyse: 'Core.Double'>
	<analyse: 'Core.SmallDouble'>

	| double |
	reading log: ['double: ', double printString] do: [double := self get: reading double: aClass]