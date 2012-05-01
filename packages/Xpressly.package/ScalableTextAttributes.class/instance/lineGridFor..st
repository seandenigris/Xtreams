accessing
lineGridFor: aFontPolicy
	"Answer the relative space between lines of a paragraph in the style 
	of the receiver."

	^scale isNil
		ifTrue: [ super lineGridFor: aFontPolicy ]
		ifFalse: [ (super lineGridFor: aFontPolicy) * scale y ]