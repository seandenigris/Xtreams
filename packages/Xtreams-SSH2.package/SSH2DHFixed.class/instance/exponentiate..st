private
exponentiate: number
"Compute number ** exponent \\ p using binary square and multiply method.
"
	^self exponent inject: 1 into: [ :total :byte |
		#(128 64 32 16 8 4 2 1)
			inject: total
			into: [ :subtotal :mask || square |
				square := subtotal * subtotal \\ p.
				(byte bitAnd: mask) == 0
					ifTrue: [ square ]
					ifFalse: [ square * number \\ p ] ] ]