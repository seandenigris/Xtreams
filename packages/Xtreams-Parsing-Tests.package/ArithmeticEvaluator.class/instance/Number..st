rules
Number: digits
	<action: 'Number'>	
	^digits inject: 0 into: [ :total :digit | total * 10 + ('0123456789' indexOf: digit) - 1 ]