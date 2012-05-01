tests
testClass
	marshaling put: UndefinedObject.
	marshaling put: ObjectMarshalerTest.
	self analyse.
	self assert: marshaling get = UndefinedObject.
	self assert: marshaling get = ObjectMarshalerTest