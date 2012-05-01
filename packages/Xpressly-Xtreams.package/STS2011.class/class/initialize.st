class initialization
initialize
"
	self initialize
"
	| walk |
	MorseTree := #($ ($T ($M ($O) ($G ($Q) ($Z))) ($N ($K ($Y) ($C)) ($D ($X) ($B)))) ($E ($A ($W ($J) ($P)) ($R () ($L))) ($I ($U () ($F)) ($S ($V) ($H))))).
	Morse := Dictionary new.
	walk := [ :beeps :node |
		node isEmpty ifFalse: [ Morse at: node first put: beeps ].
		node size > 1 ifTrue: [
			walk value: (beeps copyWith: $-) value: (node at: 2).
			walk value: (beeps copyWith: $.) value: node last ] ].
	walk value: '' value: MorseTree