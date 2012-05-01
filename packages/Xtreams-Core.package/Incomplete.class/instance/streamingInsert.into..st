private
streamingInsert: anInteger into: aWriteStream
	| amount |
	collection ifNil: [(self class on: collection count: 0 at: start) raise].
	amount := anInteger min: count.
	aWriteStream insert: amount from: collection at: start.
	amount < anInteger ifTrue: [(self class on: collection count: amount at: start) raise].