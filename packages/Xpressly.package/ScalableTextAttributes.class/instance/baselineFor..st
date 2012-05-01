accessing
baselineFor: aFontPolicy
	"Answer the relative space between lines of a paragraph in the style 
	of the receiver."

	^scale isNil
		ifTrue: [ super baselineFor: aFontPolicy ]
		ifFalse: [ (super baselineFor: aFontPolicy) * scale y ]