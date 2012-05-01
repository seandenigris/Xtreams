private
SEQUENCE: size
	<tag: 16>
	| sequence |
	source := source limiting: size.
	[	sequence := OrderedCollection new.
		[	[ sequence add: self get ] repeat
		] on: Incomplete do: [ :ex | ].
	] ensure: [ source := source source ].
	^sequence