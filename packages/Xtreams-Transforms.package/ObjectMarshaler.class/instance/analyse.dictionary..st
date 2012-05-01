analyse - complex
analyse: reading dictionary: aClass
	<analyse: 'Core.Dictionary'>
	<analyse: 'Core.KeyedCollection'>

	| size |
	reading log: ['dictionary: ', aClass fullName, ' size: ', size printString] do: [
		size := self get: reading integer: nil.
		size timesRepeat:
			[self analyse: reading.
			self analyse: reading]]