private
copyFrom: aSequenceableCollection size: anInteger startingAt: startIndex

	destination type = UnsignedChar
		ifTrue: [ 	destination copyAt: position from: aSequenceableCollection size: anInteger startingAt: startIndex. ]
		ifFalse: [
			0 to: anInteger - 1 do: [ :i |
				destination at: position + i put: (aSequenceableCollection at: startIndex + i) ] ]