accessing
update: count from: input into: output

	^encrypt
		ifTrue: [ library encrypt: count from: input into: output key: handle iv: ivObject ivSize: iv size ]
		ifFalse: [ library decrypt: count from: input into: output key: handle iv: ivObject ivSize: iv size ]