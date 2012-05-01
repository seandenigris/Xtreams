instance creation
fromElements: elements

	^[ :y :p :q :g | self new p: p q: q g: g y: y ] valueWithArguments: elements asArray