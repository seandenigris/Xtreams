Lexical
Italic: flow
	<action: 'Italic' arguments: #( 2 )>
	^flow isEmpty ifTrue: [ Text new ] ifFalse: [ Text string: (flow fold: [ :a :b | a , b ]) emphasis: #italic ]