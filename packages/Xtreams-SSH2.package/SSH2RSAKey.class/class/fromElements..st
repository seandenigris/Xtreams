instance creation
fromElements: elements

	^[ :n :e | self new e: e n: n ] valueWithArguments: elements asArray