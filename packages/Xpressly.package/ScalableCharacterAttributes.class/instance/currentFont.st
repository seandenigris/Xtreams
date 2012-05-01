accessing
currentFont
	^scaledQuery isNil 
		ifTrue: [super currentFont]
		ifFalse: [Graphics.Screen default defaultFontPolicy findFont: scaledQuery]