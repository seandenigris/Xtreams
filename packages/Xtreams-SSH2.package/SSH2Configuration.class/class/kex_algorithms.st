accessing-connection parameters
kex_algorithms

	^kex_algorithms ifNil: [ #('diffie-hellman-group1-sha1' 'diffie-hellman-group14-sha1') ]