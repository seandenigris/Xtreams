private
SET: size
	<tag: 17>
	| set |
	source := source limiting: size.
	[	set := Set new.
		[	[ set add: self get ] repeat
		] on: Incomplete do: [ :ex | ]
	] ensure: [ source := source source ].
	^set