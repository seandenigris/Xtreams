instance creation
new: type

	^(Requests at: type ifAbsent: [ self ]) new