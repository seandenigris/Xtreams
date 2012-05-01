Lexical
Line: flow
	<action: 'Line'>

	| line |
	line := (flow fold: [ :a :b | a , b ]), (String with: CR) asText.
	line first = Character tab ifTrue: [^line allButFirst: 1].
	^line