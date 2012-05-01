06 transforms
transforms6ExamplesMorseDecoding
	<slide: 6 title: 'Morse Code Decoding'>
"
---
($ ($T ($M ($O)           ($G ($Q) ($Z)))
       ($N ($K ($Y) ($C)) ($D ($X) ($B))))
   ($E ($A ($W ($J) ($P)) ($R ()   ($L)))
       ($I ($U ()   ($F)) ($S ($V) ($H)))))
---
"

	('... -- .- .-.. .-.. - .- .-.. -.- ' reading
		transforming: [ :in :out || node beep |
			node := MorseTree.
			[	beep := in get.
				beep = Character space 
			] whileFalse: [
				node := beep = $.
					ifTrue: [ node at: 3 ]
					ifFalse: [ node at: 2 ] ].
			out put: node first ]
	) rest