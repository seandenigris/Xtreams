06 transforms
transforms4ExamplesComposition
	<slide: 4 title: 'Composition / Stacking'>
	ones := [ 1 ] reading.
	twoAndUp := ones
		injecting: 1
		into: [ :previous :one | previous + one ].

	sieve := OrderedCollection new.
	primes := twoAndUp rejecting: [ :i |
		(sieve anySatisfy: [ :p | i \\ p = 0 ])
			ifTrue: [ true ]
			ifFalse: [ sieve add: i. false ] ].
	primes read: 10.