tests
testNamespace
	marshaling put: Root.Smalltalk.
	marshaling put: Root.Smalltalk.Xtreams.
	self analyse.
	self assert: marshaling get = Root.Smalltalk.
	self assert: marshaling get = Root.Smalltalk.Xtreams