reading - complex
get: reading set: aClass
	<reads: 'Core.Set'>

	| set size |
	size := self get: reading integer: nil.
	set := aClass new: size.
	size timesRepeat: [set add: (self unmarshal: reading)].
	^set