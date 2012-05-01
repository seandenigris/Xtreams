converting
reading
	^[[self next]
		on: EndOfStreamNotification
		do: [:notification |
			notification originator == self
				ifTrue:	[Incomplete zero raise]
				ifFalse:	[notification pass]]] reading
		contentsSpecies: self contentsSpecies;
		yourself