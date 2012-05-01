reading - complex
get: reading point: aClass
	<reads: 'Core.Point'>

	^Point
		x: (self unmarshal: reading) 
		y: (self unmarshal: reading)