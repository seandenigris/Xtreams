10 binary
binaryMarshaling4
	<slide: 2.4 title: 'Marshaling'>
	(Xtreams.ObjectAnalyseStream on:
		output conclusion reading) rest =
	'0+10	header: #[83 84 83 84 20 4 105 117 236 8]
	10+36	record
		10+1	class id: 32
		11+31	class description: UI.ValueHolder
		42+1	object id: 1
		43+3	object: UI.ValueHolder
			43+1	dependents
				43+1	class id: 28 Core.UndefinedObject
					43+1	class id: 28
					44+0	nil
			44+2	value
				44+2	class id: 22 Core.SmallInteger
					44+1	class id: 22
					45+1	byte integer: 100'