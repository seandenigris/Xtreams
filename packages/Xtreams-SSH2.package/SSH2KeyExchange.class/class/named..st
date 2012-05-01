instance creation
named: id

	^self perform: (id copy replaceAll: $- with: $_) asSymbol