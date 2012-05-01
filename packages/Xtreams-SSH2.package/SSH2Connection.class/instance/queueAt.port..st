api
queueAt: name port: port

	^queues at: (self queueNameFrom: name port: port) ifAbsent: [ nil ]