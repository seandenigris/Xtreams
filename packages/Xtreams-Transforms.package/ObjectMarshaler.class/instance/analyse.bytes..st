analyse - complex
analyse: reading bytes: aClass
	<analyse: 'Core.ByteArray'>

	| bytes |
	reading log: ['bytes: ', bytes printString] do: [bytes := self get: reading bytes: aClass]