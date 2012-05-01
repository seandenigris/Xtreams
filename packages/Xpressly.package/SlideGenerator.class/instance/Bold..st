Lexical
Bold: flow
	<action: 'Bold' arguments: #( 2 )>
	^flow isEmpty ifTrue: [ Text new ] ifFalse: [ Text string: (flow fold: [ :a :b | a , b ]) emphasis: #bold ]